/* Copyright 1995-1998,2000-2006,2009-2014,2018
     Free Software Foundation, Inc.

   This file is part of Guile.

   Guile is free software: you can redistribute it and/or modify it
   under the terms of the GNU Lesser General Public License as published
   by the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   Guile is distributed in the hope that it will be useful, but WITHOUT
   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
   FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
   License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with Guile.  If not, see
   <https://www.gnu.org/licenses/>.  */




#ifdef HAVE_CONFIG_H
#  include <config.h>
#endif

#include <string.h>

#include "array-handle.h"
#include "arrays.h"
#include "boolean.h"
#include "generalized-vectors.h"
#include "gsubr.h"
#include "list.h"
#include "numbers.h"
#include "pairs.h"
#include "ports.h"
#include "srfi-4.h"
#include <stdbool.h>

#include "bitvectors.h"


/* Bit vectors. Would be nice if they were implemented on top of bytevectors,
 * but alack, all we have is this crufty C.
 */

#define SCM_F_BITVECTOR_IMMUTABLE (0x80)

#define IS_BITVECTOR(obj)         SCM_HAS_TYP7  ((obj), scm_tc7_bitvector)
#define IS_MUTABLE_BITVECTOR(x)                                 \
  (SCM_NIMP (x) &&                                              \
   ((SCM_CELL_TYPE (x) & (0x7f | SCM_F_BITVECTOR_IMMUTABLE))    \
    == scm_tc7_bitvector))
#define BITVECTOR_LENGTH(obj)   ((size_t)SCM_CELL_WORD_1(obj))
#define BITVECTOR_BITS(obj)     ((uint32_t *)SCM_CELL_WORD_2(obj))

uint32_t *
scm_i_bitvector_bits (SCM vec)
{
  if (!IS_BITVECTOR (vec))
    abort ();
  return BITVECTOR_BITS (vec);
}

int
scm_i_is_mutable_bitvector (SCM vec)
{
  return IS_MUTABLE_BITVECTOR (vec);
}

int
scm_i_print_bitvector (SCM vec, SCM port, scm_print_state *pstate)
{
  size_t bit_len = BITVECTOR_LENGTH (vec);
  size_t word_len = (bit_len+31)/32;
  uint32_t *bits = BITVECTOR_BITS (vec);
  size_t i, j;

  scm_puts ("#*", port);
  for (i = 0; i < word_len; i++, bit_len -= 32)
    {
      uint32_t mask = 1;
      for (j = 0; j < 32 && j < bit_len; j++, mask <<= 1)
	scm_putc ((bits[i] & mask)? '1' : '0', port);
    }
    
  return 1;
}

SCM
scm_i_bitvector_equal_p (SCM vec1, SCM vec2)
{
  size_t bit_len = BITVECTOR_LENGTH (vec1);
  size_t word_len = (bit_len + 31) / 32;
  uint32_t last_mask =  ((uint32_t)-1) >> (32*word_len - bit_len);
  uint32_t *bits1 = BITVECTOR_BITS (vec1);
  uint32_t *bits2 = BITVECTOR_BITS (vec2);

  /* compare lengths */
  if (BITVECTOR_LENGTH (vec2) != bit_len)
    return SCM_BOOL_F;
  /* avoid underflow in word_len-1 below. */
  if (bit_len == 0)
    return SCM_BOOL_T;
  /* compare full words */
  if (memcmp (bits1, bits2, sizeof (uint32_t) * (word_len-1)))
    return SCM_BOOL_F;
  /* compare partial last words */
  if ((bits1[word_len-1] & last_mask) != (bits2[word_len-1] & last_mask))
    return SCM_BOOL_F;
  return SCM_BOOL_T;
}

int
scm_is_bitvector (SCM vec)
{
  return IS_BITVECTOR (vec);
}

SCM_DEFINE (scm_bitvector_p, "bitvector?", 1, 0, 0,
	    (SCM obj),
	    "Return @code{#t} when @var{obj} is a bitvector, else\n"
	    "return @code{#f}.")
#define FUNC_NAME s_scm_bitvector_p
{
  return scm_from_bool (scm_is_bitvector (obj));
}
#undef FUNC_NAME

SCM
scm_c_make_bitvector (size_t len, SCM fill)
{
  size_t word_len = (len + 31) / 32;
  uint32_t *bits;
  SCM res;

  bits = scm_gc_malloc_pointerless (sizeof (uint32_t) * word_len,
				    "bitvector");
  res = scm_double_cell (scm_tc7_bitvector, len, (scm_t_bits)bits, 0);

  if (!SCM_UNBNDP (fill))
    scm_bitvector_fill_x (res, fill);
  else
    memset (bits, 0, sizeof (uint32_t) * word_len);
      
  return res;
}

SCM_DEFINE (scm_make_bitvector, "make-bitvector", 1, 1, 0,
	    (SCM len, SCM fill),
	    "Create a new bitvector of length @var{len} and\n"
	    "optionally initialize all elements to @var{fill}.")
#define FUNC_NAME s_scm_make_bitvector
{
  return scm_c_make_bitvector (scm_to_size_t (len), fill);
}
#undef FUNC_NAME

SCM_DEFINE (scm_bitvector, "bitvector", 0, 0, 1,
	    (SCM bits),
	    "Create a new bitvector with the arguments as elements.")
#define FUNC_NAME s_scm_bitvector
{
  return scm_list_to_bitvector (bits);
}
#undef FUNC_NAME

size_t
scm_c_bitvector_length (SCM vec)
{
  if (!IS_BITVECTOR (vec))
    scm_wrong_type_arg_msg (NULL, 0, vec, "bitvector");
  return BITVECTOR_LENGTH (vec);
}

SCM_DEFINE (scm_bitvector_length, "bitvector-length", 1, 0, 0,
	    (SCM vec),
	    "Return the length of the bitvector @var{vec}.")
#define FUNC_NAME s_scm_bitvector_length
{
  return scm_from_size_t (scm_c_bitvector_length (vec));
}
#undef FUNC_NAME

const uint32_t *
scm_array_handle_bit_elements (scm_t_array_handle *h)
{
  if (h->element_type != SCM_ARRAY_ELEMENT_TYPE_BIT)
    scm_wrong_type_arg_msg (NULL, 0, h->array, "bit array");
  return ((const uint32_t *) h->elements) + h->base/32;
}

uint32_t *
scm_array_handle_bit_writable_elements (scm_t_array_handle *h)
{
  if (h->writable_elements != h->elements)
    scm_wrong_type_arg_msg (NULL, 0, h->array, "mutable bit array");
  return (uint32_t *) scm_array_handle_bit_elements (h);
}

size_t
scm_array_handle_bit_elements_offset (scm_t_array_handle *h)
{
  return h->base % 32;
}

#define SCM_VALIDATE_BITVECTOR(pos, v)                          \
  do {                                                          \
    SCM_ASSERT_TYPE (IS_BITVECTOR (v), v, pos, __func__,        \
                     "bitvector");                              \
      } while (0)

#define SCM_VALIDATE_MUTABLE_BITVECTOR(pos, v)                          \
  do {                                                                  \
    SCM_ASSERT_TYPE (IS_MUTABLE_BITVECTOR (v), v, pos, __func__,        \
                     "mutable bitvector");                              \
  } while (0)

const uint32_t *
scm_bitvector_elements (SCM vec, size_t *lenp)
{
  SCM_VALIDATE_BITVECTOR (1, vec);
  if (lenp)
    *lenp = BITVECTOR_LENGTH (vec);
  return BITVECTOR_BITS (vec);
}

uint32_t *
scm_bitvector_writable_elements (SCM vec, size_t *lenp)
{
  SCM_VALIDATE_MUTABLE_BITVECTOR (1, vec);
  if (lenp)
    *lenp = BITVECTOR_LENGTH (vec);
  return BITVECTOR_BITS (vec);
}

static inline bool
bitref_ (const uint32_t *bits, size_t idx)
{
  return (bits[idx/32] & (1L << (idx%32)));
}
  
static inline void
bitset_ (uint32_t *bits, size_t idx, bool b)
{
  uint32_t mask = 1L << (idx%32);
  if (b)
    bits[idx/32] |= mask;
  else
    bits[idx/32] &= ~mask;
}

SCM
scm_c_bitvector_ref (SCM vec, size_t idx)
{
  size_t len;
  const uint32_t *bits = scm_bitvector_elements (vec, &len);
  if (idx >= len)
    scm_out_of_range (NULL, scm_from_size_t (idx));
  return scm_from_bool (bitref_(bits, idx));
}

SCM_DEFINE (scm_bitvector_ref, "bitvector-ref", 2, 0, 0,
	    (SCM vec, SCM idx),
	    "Return the element at index @var{idx} of the bitvector\n"
	    "@var{vec}.")
#define FUNC_NAME s_scm_bitvector_ref
{
  return scm_c_bitvector_ref (vec, scm_to_size_t (idx));
}
#undef FUNC_NAME

void
scm_c_bitvector_set_x (SCM vec, size_t idx, SCM val)
{
  size_t len;
  uint32_t *bits = scm_bitvector_writable_elements (vec, &len);
  if (idx >= len)
    scm_out_of_range (NULL, scm_from_size_t (idx));

  bitset_(bits, idx, scm_is_true (val));
}

SCM_DEFINE (scm_bitvector_set_x, "bitvector-set!", 3, 0, 0,
	    (SCM vec, SCM idx, SCM val),
	    "Set the element at index @var{idx} of the bitvector\n"
	    "@var{vec} when @var{val} is true, else clear it.")
#define FUNC_NAME s_scm_bitvector_set_x
{
  scm_c_bitvector_set_x (vec, scm_to_size_t (idx), val);
  return SCM_UNSPECIFIED;
}
#undef FUNC_NAME

SCM_DEFINE (scm_bitvector_fill_x, "bitvector-fill!", 2, 0, 0,
	    (SCM vec, SCM val),
	    "Set all elements of the bitvector\n"
	    "@var{vec} when @var{val} is true, else clear them.")
#define FUNC_NAME s_scm_bitvector_fill_x
{
  size_t off, len;
  ssize_t inc;
  uint32_t *bits = scm_array1_bit_writable_elements (vec, &len, &inc, &off);

  if (off == 0 && inc == 1 && len > 0)
    {
      /* the usual case
       */
      size_t word_len = (len + 31) / 32;
      uint32_t last_mask =  ((uint32_t)-1) >> (32*word_len - len);

      if (scm_is_true (val))
	{
	  memset (bits, 0xFF, sizeof(uint32_t)*(word_len-1));
	  bits[word_len-1] |= last_mask;
	}
      else
	{
	  memset (bits, 0x00, sizeof(uint32_t)*(word_len-1));
	  bits[word_len-1] &= ~last_mask;
	}
    }
  else
    {
      size_t i;
      for (i = 0; i < len; i++)
        bitset_(bits, off+i*inc, scm_is_true(val));
    }

  return SCM_UNSPECIFIED;
}
#undef FUNC_NAME

SCM_DEFINE (scm_list_to_bitvector, "list->bitvector", 1, 0, 0,
	    (SCM list),
	    "Return a new bitvector initialized with the elements\n"
	    "of @var{list}.")
#define FUNC_NAME s_scm_list_to_bitvector
{
  size_t bit_len = scm_to_size_t (scm_length (list));
  SCM vec = scm_c_make_bitvector (bit_len, SCM_UNDEFINED);
  size_t word_len = (bit_len+31)/32;
  uint32_t *bits = scm_bitvector_writable_elements (vec, NULL);
  size_t i, j;

  for (i = 0; i < word_len && scm_is_pair (list); i++, bit_len -= 32)
    {
      uint32_t mask = 1;
      bits[i] = 0;
      for (j = 0; j < 32 && j < bit_len;
	   j++, mask <<= 1, list = SCM_CDR (list))
	if (scm_is_true (SCM_CAR (list)))
	  bits[i] |= mask;
    }

  return vec;
}
#undef FUNC_NAME

SCM_DEFINE (scm_bitvector_to_list, "bitvector->list", 1, 0, 0,
	    (SCM vec),
	    "Return a new list initialized with the elements\n"
	    "of the bitvector @var{vec}.")
#define FUNC_NAME s_scm_bitvector_to_list
{
  size_t off, len;
  ssize_t inc;
  SCM res = SCM_EOL;

  const uint32_t *bits = scm_array1_bit_elements (vec, &len, &inc, &off);

  if (off == 0 && inc == 1)
    {
      /* the usual case
       */
      size_t word_len = (len + 31) / 32;
      size_t i, j;

      for (i = 0; i < word_len; i++, len -= 32)
	{
	  uint32_t mask = 1;
	  for (j = 0; j < 32 && j < len; j++, mask <<= 1)
	    res = scm_cons ((bits[i] & mask)? SCM_BOOL_T : SCM_BOOL_F, res);
	}
    }
  else
    {
      size_t i;
      for (i = 0; i < len; i++)
	res = scm_cons (scm_from_bool (bitref_ (bits, off+i*inc)), res);
    }

  return scm_reverse_x (res, SCM_EOL);
}
#undef FUNC_NAME

/* From mmix-arith.w by Knuth.

  Here's a fun way to count the number of bits in a tetrabyte.

  [This classical trick is called the ``Gillies--Miller method for
  sideways addition'' in {\sl The Preparation of Programs for an
  Electronic Digital Computer\/} by Wilkes, Wheeler, and Gill, second
  edition (Reading, Mass.:\ Addison--Wesley, 1957), 191--193. Some of
  the tricks used here were suggested by Balbir Singh, Peter
  Rossmanith, and Stefan Schwoon.]
*/

static size_t
count_ones (uint32_t x)
{
  x=x-((x>>1)&0x55555555);
  x=(x&0x33333333)+((x>>2)&0x33333333);
  x=(x+(x>>4))&0x0f0f0f0f;
  x=x+(x>>8);
  return (x+(x>>16)) & 0xff;
}

SCM_DEFINE (scm_bit_count, "bit-count", 2, 0, 0,
	    (SCM b, SCM bitvector),
	    "Return the number of occurrences of the boolean @var{b} in\n"
	    "@var{bitvector}.")
#define FUNC_NAME s_scm_bit_count
{
  size_t off, len;
  ssize_t inc;
  int bit = scm_to_bool (b);
  size_t count = 0;

  const uint32_t *bits = scm_array1_bit_elements (bitvector, &len, &inc, &off);

  if (off == 0 && inc == 1 && len > 0)
    {
      /* the usual case
       */
      size_t word_len = (len + 31) / 32;
      uint32_t last_mask =  ((uint32_t)-1) >> (32*word_len - len);
      size_t i;

      for (i = 0; i < word_len-1; i++)
	count += count_ones (bits[i]);
      count += count_ones (bits[i] & last_mask);
    }
  else
    {
      size_t i;
      for (i = 0; i < len; i++)
	if (bitref_ (bits, off+i*inc))
	  count++;
    }
  
  return scm_from_size_t (bit? count : len-count);
}
#undef FUNC_NAME

/* returns 32 for x == 0. 
*/
static size_t
find_first_one (uint32_t x)
{
  size_t pos = 0;
  /* do a binary search in x. */
  if ((x & 0xFFFF) == 0)
    x >>= 16, pos += 16;
  if ((x & 0xFF) == 0)
    x >>= 8, pos += 8;
  if ((x & 0xF) == 0)
    x >>= 4, pos += 4;
  if ((x & 0x3) == 0)
    x >>= 2, pos += 2;
  if ((x & 0x1) == 0)
    pos += 1;
  return pos;
}

SCM_DEFINE (scm_bit_position, "bit-position", 3, 0, 0,
           (SCM item, SCM v, SCM k),
	    "Return the index of the first occurrence of @var{item} in bit\n"
	    "vector @var{v}, starting from @var{k}.  If there is no\n"
	    "@var{item} entry between @var{k} and the end of\n"
	    "@var{v}, then return @code{#f}.  For example,\n"
	    "\n"
	    "@example\n"
	    "(bit-position #t #*000101 0)  @result{} 3\n"
	    "(bit-position #f #*0001111 3) @result{} #f\n"
	    "@end example")
#define FUNC_NAME s_scm_bit_position
{
  size_t off, len;
  ssize_t inc;

  const uint32_t *bits = scm_array1_bit_elements (v, &len, &inc, &off);
  int bit = scm_to_bool (item);
  SCM res = SCM_BOOL_F;
  size_t first_bit = scm_to_unsigned_integer (k, 0, len);

  if (off == 0 && inc == 1 && len > 0)
    {
      size_t word_len = (len + 31) / 32;
      uint32_t last_mask =  ((uint32_t)-1) >> (32*word_len - len);
      size_t first_word = first_bit / 32;
      uint32_t first_mask =
	((uint32_t)-1) << (first_bit - 32*first_word);
      uint32_t w;
      
      for (size_t i = first_word; i < word_len; i++)
	{
	  w = (bit? bits[i] : ~bits[i]);
	  if (i == first_word)
	    w &= first_mask;
	  if (i == word_len-1)
	    w &= last_mask;
	  if (w)
	    {
	      res = scm_from_size_t (32*i + find_first_one (w));
	      break;
	    }
	}
    }
  else
    {
      for (size_t i = first_bit; i < len; i++)
	{
	  if (bit == bitref_ (bits, off+i*inc))
	    {
	      res = scm_from_size_t (i);
	      break;
	    }
	}
    }

  return res;
}
#undef FUNC_NAME

SCM_DEFINE (scm_bit_set_star_x, "bit-set*!", 3, 0, 0,
	    (SCM v, SCM kv, SCM obj),
	    "Set entries of bit vector @var{v} to @var{obj}, with @var{kv}\n"
	    "selecting the entries to change.  The return value is\n"
	    "unspecified.\n"
	    "\n"
	    "If @var{kv} is a bit vector, then those entries where it has\n"
	    "@code{#t} are the ones in @var{v} which are set to @var{obj}.\n"
	    "@var{v} must be at least as long as @var{kv}.  When @var{obj}\n"
	    "is @code{#t} it's like @var{kv} is OR'ed into @var{v}.  Or when\n"
	    "@var{obj} is @code{#f} it can be seen as an ANDNOT.\n"
	    "\n"
	    "@example\n"
	    "(define bv #*01000010)\n"
	    "(bit-set*! bv #*10010001 #t)\n"
	    "bv\n"
	    "@result{} #*11010011\n"
	    "@end example\n"
	    "\n"
	    "If @var{kv} is a u32vector, then its elements are\n"
	    "indices into @var{v} which are set to @var{obj}.\n"
	    "\n"
	    "@example\n"
	    "(define bv #*01000010)\n"
	    "(bit-set*! bv #u32(5 2 7) #t)\n"
	    "bv\n"
	    "@result{} #*01100111\n"
	    "@end example")
#define FUNC_NAME s_scm_bit_set_star_x
{
  size_t v_off, v_len;
  ssize_t v_inc;

  /* Validate that OBJ is a boolean so this is done even if we don't
     need BIT.
  */
  int bit = scm_to_bool (obj);

  uint32_t *v_bits = scm_array1_bit_writable_elements (v, &v_len, &v_inc, &v_off);

  if (scm_is_bitvector (kv))
    {
      size_t kv_off, kv_len;
      ssize_t kv_inc;

      const uint32_t *kv_bits = scm_array1_bit_elements (kv, &kv_len, &kv_inc, &kv_off);

      if (v_len < kv_len)
	scm_misc_error (NULL,
			"bit vectors must have equal length",
			SCM_EOL);

      if (v_off == 0 && v_inc == 1 && kv_off == 0 && kv_inc == 1 && kv_len > 0)
	{
	  size_t word_len = (kv_len + 31) / 32;
	  uint32_t last_mask = ((uint32_t)-1) >> (32*word_len - kv_len);
	  size_t i;
 
	  if (bit == 0)
	    {
	      for (i = 0; i < word_len-1; i++)
		v_bits[i] &= ~kv_bits[i];
	      v_bits[i] &= ~(kv_bits[i] & last_mask);
	    }
	  else
	    {
	      for (i = 0; i < word_len-1; i++)
		v_bits[i] |= kv_bits[i];
	      v_bits[i] |= kv_bits[i] & last_mask;
	    }
	}
      else
	{
	  size_t i;
	  for (i = 0; i < kv_len; i++)
	    if (bitref_ (kv_bits, kv_off+i*kv_inc))
              bitset_ (v_bits, v_off+i*v_inc, bit);
	}
    }
  else if (scm_is_true (scm_u32vector_p (kv)))
    {
      size_t kv_len;
      const uint32_t *kv_elts  = scm_u32vector_elements (kv, &kv_len);
      for (size_t i = 0; i < kv_len; i++)
        bitset_ (v_bits, v_off+(kv_elts[i])*v_inc, bit);
    }
  else 
    scm_wrong_type_arg_msg (NULL, 0, kv, "bitvector or u32vector");

  return SCM_UNSPECIFIED;
}
#undef FUNC_NAME


SCM_DEFINE (scm_bit_count_star, "bit-count*", 3, 0, 0,
           (SCM v, SCM kv, SCM obj),
	    "Return a count of how many entries in bit vector @var{v} are\n"
	    "equal to @var{obj}, with @var{kv} selecting the entries to\n"
	    "consider.\n"
	    "\n"
	    "If @var{kv} is a bit vector, then those entries where it has\n"
	    "@code{#t} are the ones in @var{v} which are considered.\n"
	    "@var{kv} and @var{v} must be the same length.\n"
	    "\n"
	    "If @var{kv} is a u32vector, then it contains\n"
	    "the indexes in @var{v} to consider.\n"
	    "\n"
	    "For example,\n"
	    "\n"
	    "@example\n"
	    "(bit-count* #*01110111 #*11001101 #t) @result{} 3\n"
	    "(bit-count* #*01110111 #u32(7 0 4) #f)  @result{} 2\n"
	    "@end example")
#define FUNC_NAME s_scm_bit_count_star
{
  size_t v_off, v_len;
  ssize_t v_inc;
  size_t count = 0;

  /* Validate that OBJ is a boolean so this is done even if we don't
     need BIT.
  */
  int bit = scm_to_bool (obj);

  const uint32_t *v_bits = scm_array1_bit_elements (v, &v_len, &v_inc, &v_off);

  if (scm_is_bitvector (kv))
    {
      size_t kv_off, kv_len;
      ssize_t kv_inc;

      const uint32_t *kv_bits = scm_array1_bit_elements (kv, &kv_len, &kv_inc, &kv_off);

      if (v_len != kv_len)
	scm_misc_error (NULL,
			"bit vectors must have equal length",
			SCM_EOL);

      if (v_off == 0 && v_inc == 1 && kv_off == 0 && kv_inc == 1 && kv_len > 0)
	{
	  size_t i, word_len = (kv_len + 31) / 32;
	  uint32_t last_mask = ((uint32_t)-1) >> (32*word_len - kv_len);
	  uint32_t xor_mask = bit? 0 : ((uint32_t)-1);

	  for (i = 0; i+1 < word_len; i++)
	    count += count_ones ((v_bits[i]^xor_mask) & kv_bits[i]);
	  count += count_ones ((v_bits[i]^xor_mask) & kv_bits[i] & last_mask);
 	}
      else
	{
	  for (size_t i = 0; i < kv_len; i++)
	    if (bitref_ (kv_bits, kv_off+i*kv_inc) == bitref_ (v_bits, v_off+i*v_inc))
              count++;
	}
    }
  else if (scm_is_true (scm_u32vector_p (kv)))
    {
      size_t kv_len;
      const uint32_t *kv_elts = scm_u32vector_elements (kv, &kv_len);
      for (size_t i = 0; i < kv_len; i++)
	{
          bool elt = bitref_ (v_bits, v_off+(kv_elts[i])*v_inc);
	  if ((bit && elt) || (!bit && !elt))
	    count++;
	}
    }
  else 
    scm_wrong_type_arg_msg (NULL, 0, kv, "bitvector or u32vector");

  return scm_from_size_t (count);
}
#undef FUNC_NAME

SCM_DEFINE (scm_bit_invert_x, "bit-invert!", 1, 0, 0, 
           (SCM v),
	    "Modify the bit vector @var{v} by replacing each element with\n"
	    "its negation.")
#define FUNC_NAME s_scm_bit_invert_x
{
  size_t off, len;
  ssize_t inc;
  uint32_t *bits = scm_array1_bit_writable_elements (v, &len, &inc, &off);

  /* FIXME could easily deal with off!=0 here */  
  if (off == 0 && inc == 1 && len > 0)
    {
      size_t i, word_len = (len + 31) / 32;
      uint32_t last_mask = ((uint32_t)-1) >> (32*word_len - len);

      for (i = 0; i < word_len-1; i++)
	bits[i] = ~bits[i];
      bits[i] = bits[i] ^ last_mask;
    }
  else
    {
      for (size_t i = 0; i < len; i++)
        bitset_ (bits, off+i*inc, !(bitref_ (bits, off+i*inc)));
    }

  return SCM_UNSPECIFIED;
}
#undef FUNC_NAME


SCM
scm_istr2bve (SCM str)
{
  size_t len = scm_i_string_length (str);
  SCM vec = scm_c_make_bitvector (len, SCM_UNDEFINED);
  SCM res = vec;

  uint32_t mask;
  size_t k, j;
  const char *c_str;
  uint32_t *data;

  data = scm_bitvector_writable_elements (vec, NULL);
  c_str = scm_i_string_chars (str);

  for (k = 0; k < (len + 31) / 32; k++)
    {
      data[k] = 0L;
      j = len - k * 32;
      if (j > 32)
	j = 32;
      for (mask = 1L; j--; mask <<= 1)
	switch (*c_str++)
	  {
	  case '0':
	    break;
	  case '1':
	    data[k] |= mask;
	    break;
	  default:
	    res = SCM_BOOL_F;
	    goto exit;
	  }
    }
  
 exit:
  scm_remember_upto_here_1 (str);
  return res;
}

SCM_VECTOR_IMPLEMENTATION (SCM_ARRAY_ELEMENT_TYPE_BIT, scm_make_bitvector)

void
scm_init_bitvectors ()
{
#include "bitvectors.x"
}
