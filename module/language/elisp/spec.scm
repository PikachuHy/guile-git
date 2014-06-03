;;; Guile Emac Lisp

;; Copyright (C) 2001, 2009, 2010 Free Software Foundation, Inc.

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

;;; Code:

(define-module (language elisp spec)
  #:use-module (language elisp compile-tree-il)
  #:use-module (language elisp parser)
  #:use-module (system base language)
  #:use-module (system base compile)
  #:use-module (system vm vm)
  #:export (elisp))

(save-module-excursion
 (lambda ()
   (define-module (elisp-symbols) #:pure #:filename #f)
   (define-module (elisp-functions) #:pure #:filename #f)
   (define-module (elisp-plists) #:pure #:filename #f)))

(define-language elisp
  #:title     "Emacs Lisp"
  #:reader    (lambda (port env) (read-elisp port))
  ;;#:joiner (lambda (exps env) (cons 'progn exps))
  #:printer   write
  #:compilers `((tree-il . ,compile-tree-il)))

(set-default-vm-engine! 'debug)
(set-vm-engine! 'debug)

(compile-and-load (%search-load-path "language/elisp/boot.el")
                  #:from 'elisp)
