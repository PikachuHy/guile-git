;;; Continuation-passing style (CPS) intermediate language (IL)

;; Copyright (C) 2013, 2014, 2015 Free Software Foundation, Inc.

;;;; This library is free software; you can redistribute it and/or
;;;; modify it under the terms of the GNU Lesser General Public
;;;; License as published by the Free Software Foundation; either
;;;; version 3 of the License, or (at your option) any later version.
;;;;
;;;; This library is distributed in the hope that it will be useful,
;;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;;; Lesser General Public License for more details.
;;;;
;;;; You should have received a copy of the GNU Lesser General Public
;;;; License along with this library; if not, write to the Free Software
;;;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA

;;; Commentary:
;;;
;;; Some bytecode operations can encode an immediate as an operand.
;;; This pass tranforms generic primcalls to these specialized
;;; primcalls, if possible.
;;;
;;; Code:

(define-module (language cps specialize-primcalls)
  #:use-module (ice-9 match)
  #:use-module (language cps)
  #:use-module (language cps utils)
  #:use-module (language cps intmap)
  #:export (specialize-primcalls))

(define (specialize-primcalls conts)
  (let ((constants (compute-constant-values conts)))
    (define (u6? var)
      (let ((val (intmap-ref constants var (lambda (_) #f))))
        (and (exact-integer? val) (<= 0 val 63))))
    (define (u8? var)
      (let ((val (intmap-ref constants var (lambda (_) #f))))
        (and (exact-integer? val) (<= 0 val 255))))
    (define (u64? var)
      (let ((val (intmap-ref constants var (lambda (_) #f))))
        (and (exact-integer? val) (<= 0 val #xffffFFFFffffFFFF))))
    (define (s64? var)
      (let ((val (intmap-ref constants var (lambda (_) #f))))
        (and (exact-integer? val)
             (<= (- #x8000000000000000) val #x7fffFFFFffffFFFF))))
    (define (f64? var)
      (let ((val (intmap-ref constants var (lambda (_) #f))))
        (and (number? val) (inexact? val) (real? val))))
    (define (specialize-primcall name param args)
      (define (rename name)
        (build-exp ($primcall name param args)))
      (match (cons name args)
        (('make-vector (? u8? n) init)
         (build-exp
           ($primcall 'make-vector/immediate (intmap-ref constants n) (init))))
        (('vector-ref v (? u8? n))
         (build-exp
           ($primcall 'vector-ref/immediate (intmap-ref constants n) (v))))
        (('vector-set! v (? u8? n) x)
         (build-exp
           ($primcall 'vector-set!/immediate (intmap-ref constants n) (v x))))
        (('allocate-struct v (? u8? n))
         (build-exp
           ($primcall 'allocate-struct/immediate (intmap-ref constants n) (v))))
        (('struct-ref s (? u8? n))
         (build-exp
           ($primcall 'struct-ref/immediate (intmap-ref constants n) (s))))
        (('struct-set! s (? u8? n) x)
         (build-exp
           ($primcall 'struct-set!/immediate (intmap-ref constants n) (s x))))
        (('add x (? u8? y)) (build-exp ($primcall 'add/immediate #f (x y))))
        (('add (? u8? x) y) (build-exp ($primcall 'add/immediate #f (y x))))
        (('sub x (? u8? y)) (build-exp ($primcall 'sub/immediate #f (x y))))
        (('uadd x (? u8? y)) (build-exp ($primcall 'uadd/immediate #f (x y))))
        (('uadd (? u8? x) y) (build-exp ($primcall 'uadd/immediate #f (y x))))
        (('usub x (? u8? y)) (build-exp ($primcall 'usub/immediate #f (x y))))
        (('umul x (? u8? y)) (build-exp ($primcall 'umul/immediate #f (x y))))
        (('umul (? u8? x) y) (build-exp ($primcall 'umul/immediate #f (y x))))
        (('ursh x (? u6? y)) (build-exp ($primcall 'ursh/immediate #f (x y))))
        (('ulsh x (? u6? y)) (build-exp ($primcall 'ulsh/immediate #f (x y))))
        (('scm->f64 (? f64? var))
         (build-exp ($primcall 'load-f64 (intmap-ref constants var) ())))
        (((or 'scm->u64 'scm->u64/truncate) (? u64? var))
         (build-exp ($primcall 'load-u64 (intmap-ref constants var) ())))
        (('scm->s64 (? s64? var))
         (build-exp ($primcall 'load-s64 (intmap-ref constants var) ())))
        (_ #f)))
    (intmap-map
     (lambda (label cont)
       (match cont
         (($ $kargs names vars ($ $continue k src ($ $primcall name param args)))
          (let ((exp* (specialize-primcall name param args)))
            (if exp*
                (build-cont
                  ($kargs names vars ($continue k src ,exp*)))
                cont)))
         (_ cont)))
     conts)))
