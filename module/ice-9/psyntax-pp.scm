(eval-when (compile) (set-current-module (resolve-module (quote (guile)))))
(if #f #f)

(letrec ((and-map*17
           (lambda (f57 first56 . rest55)
             (let ((t58 (null? first56)))
               (if t58
                 t58
                 (if (null? rest55)
                   (letrec ((andmap59
                              (lambda (first60)
                                (let ((x61 (car first60))
                                      (first62 (cdr first60)))
                                  (if (null? first62)
                                    (f57 x61)
                                    (if (f57 x61) (andmap59 first62) #f))))))
                     (andmap59 first56))
                   (letrec ((andmap63
                              (lambda (first64 rest65)
                                (let ((x66 (car first64))
                                      (xr67 (map car rest65))
                                      (first68 (cdr first64))
                                      (rest69 (map cdr rest65)))
                                  (if (null? first68)
                                    (apply f57 (cons x66 xr67))
                                    (if (apply f57 (cons x66 xr67))
                                      (andmap63 first68 rest69)
                                      #f))))))
                     (andmap63 first56 rest55))))))))
  (letrec ((lambda-var-list162
             (lambda (vars286)
               (letrec ((lvl287
                          (lambda (vars288 ls289 w290)
                            (if (pair? vars288)
                              (lvl287
                                (cdr vars288)
                                (cons (wrap142 (car vars288) w290 #f) ls289)
                                w290)
                              (if (id?114 vars288)
                                (cons (wrap142 vars288 w290 #f) ls289)
                                (if (null? vars288)
                                  ls289
                                  (if (syntax-object?98 vars288)
                                    (lvl287
                                      (syntax-object-expression99 vars288)
                                      ls289
                                      (join-wraps133
                                        w290
                                        (syntax-object-wrap100 vars288)))
                                    (cons vars288 ls289))))))))
                 (lvl287 vars286 (quote ()) (quote (()))))))
           (gen-var161
             (lambda (id291)
               (let ((id292 (if (syntax-object?98 id291)
                              (syntax-object-expression99 id291)
                              id291)))
                 (gensym (symbol->string id292)))))
           (strip160
             (lambda (x293 w294)
               (if (memq (quote top) (wrap-marks117 w294))
                 x293
                 (letrec ((f295 (lambda (x296)
                                  (if (syntax-object?98 x296)
                                    (strip160
                                      (syntax-object-expression99 x296)
                                      (syntax-object-wrap100 x296))
                                    (if (pair? x296)
                                      (let ((a297 (f295 (car x296)))
                                            (d298 (f295 (cdr x296))))
                                        (if (if (eq? a297 (car x296))
                                              (eq? d298 (cdr x296))
                                              #f)
                                          x296
                                          (cons a297 d298)))
                                      (if (vector? x296)
                                        (let ((old299 (vector->list x296)))
                                          (let ((new300 (map f295 old299)))
                                            (if (and-map*17 eq? old299 new300)
                                              x296
                                              (list->vector new300))))
                                        x296))))))
                   (f295 x293)))))
           (ellipsis?159
             (lambda (x301)
               (if (nonsymbol-id?113 x301)
                 (free-id=?137
                   x301
                   '#(syntax-object
                      ...
                      ((top)
                       #(ribcage () () ())
                       #(ribcage () () ())
                       #(ribcage #(x) #((top)) #("i"))
                       #(ribcage
                         (lambda-var-list
                           gen-var
                           strip
                           ellipsis?
                           chi-void
                           eval-local-transformer
                           chi-local-syntax
                           chi-lambda-clause
                           chi-body
                           chi-macro
                           chi-application
                           chi-expr
                           chi
                           chi-top
                           syntax-type
                           chi-when-list
                           chi-install-global
                           chi-top-sequence
                           chi-sequence
                           source-wrap
                           wrap
                           bound-id-member?
                           distinct-bound-ids?
                           valid-bound-ids?
                           bound-id=?
                           free-id=?
                           id-var-name
                           same-marks?
                           join-marks
                           join-wraps
                           smart-append
                           make-binding-wrap
                           extend-ribcage!
                           make-empty-ribcage
                           new-mark
                           anti-mark
                           the-anti-mark
                           top-marked?
                           top-wrap
                           empty-wrap
                           set-ribcage-labels!
                           set-ribcage-marks!
                           set-ribcage-symnames!
                           ribcage-labels
                           ribcage-marks
                           ribcage-symnames
                           ribcage?
                           make-ribcage
                           gen-labels
                           gen-label
                           make-rename
                           rename-marks
                           rename-new
                           rename-old
                           subst-rename?
                           wrap-subst
                           wrap-marks
                           make-wrap
                           id-sym-name&marks
                           id-sym-name
                           id?
                           nonsymbol-id?
                           global-extend
                           lookup
                           macros-only-env
                           extend-var-env
                           extend-env
                           null-env
                           binding-value
                           binding-type
                           make-binding
                           arg-check
                           source-annotation
                           no-source
                           set-syntax-object-module!
                           set-syntax-object-wrap!
                           set-syntax-object-expression!
                           syntax-object-module
                           syntax-object-wrap
                           syntax-object-expression
                           syntax-object?
                           make-syntax-object
                           build-lexical-var
                           build-letrec
                           build-named-let
                           build-let
                           build-sequence
                           build-data
                           build-primref
                           build-lambda
                           build-global-definition
                           maybe-name-value!
                           build-global-assignment
                           build-global-reference
                           analyze-variable
                           build-lexical-assignment
                           build-lexical-reference
                           build-conditional
                           build-application
                           build-void
                           get-global-definition-hook
                           put-global-definition-hook
                           gensym-hook
                           local-eval-hook
                           top-level-eval-hook
                           fx<
                           fx=
                           fx-
                           fx+
                           *mode*
                           noexpand)
                         ((top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top)
                          (top))
                         ("i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"
                          "i"))
                       #(ribcage
                         (define-structure and-map*)
                         ((top) (top))
                         ("i" "i")))
                      (hygiene guile)))
                 #f)))
           (chi-void158 (lambda () (build-void80 #f)))
           (eval-local-transformer157
             (lambda (expanded302 mod303)
               (let ((p304 (local-eval-hook77 expanded302 mod303)))
                 (if (procedure? p304)
                   p304
                   (syntax-violation
                     #f
                     "nonprocedure transformer"
                     p304)))))
           (chi-local-syntax156
             (lambda (rec?305 e306 r307 w308 s309 mod310 k311)
               ((lambda (tmp312)
                  ((lambda (tmp313)
                     (if tmp313
                       (apply (lambda (_314 id315 val316 e1317 e2318)
                                (let ((ids319 id315))
                                  (if (not (valid-bound-ids?139 ids319))
                                    (syntax-violation
                                      #f
                                      "duplicate bound keyword"
                                      e306)
                                    (let ((labels321 (gen-labels120 ids319)))
                                      (let ((new-w322
                                              (make-binding-wrap131
                                                ids319
                                                labels321
                                                w308)))
                                        (k311 (cons e1317 e2318)
                                              (extend-env108
                                                labels321
                                                (let ((w324 (if rec?305
                                                              new-w322
                                                              w308))
                                                      (trans-r325
                                                        (macros-only-env110
                                                          r307)))
                                                  (map (lambda (x326)
                                                         (cons 'macro
                                                               (eval-local-transformer157
                                                                 (chi150
                                                                   x326
                                                                   trans-r325
                                                                   w324
                                                                   mod310)
                                                                 mod310)))
                                                       val316))
                                                r307)
                                              new-w322
                                              s309
                                              mod310))))))
                              tmp313)
                       ((lambda (_328)
                          (syntax-violation
                            #f
                            "bad local syntax definition"
                            (source-wrap143 e306 w308 s309 mod310)))
                        tmp312)))
                   ($sc-dispatch
                     tmp312
                     '(any #(each (any any)) any . each-any))))
                e306)))
           (chi-lambda-clause155
             (lambda (e329 docstring330 c331 r332 w333 mod334 k335)
               ((lambda (tmp336)
                  ((lambda (tmp337)
                     (if (if tmp337
                           (apply (lambda (args338 doc339 e1340 e2341)
                                    (if (string? (syntax->datum doc339))
                                      (not docstring330)
                                      #f))
                                  tmp337)
                           #f)
                       (apply (lambda (args342 doc343 e1344 e2345)
                                (chi-lambda-clause155
                                  e329
                                  doc343
                                  (cons args342 (cons e1344 e2345))
                                  r332
                                  w333
                                  mod334
                                  k335))
                              tmp337)
                       ((lambda (tmp347)
                          (if tmp347
                            (apply (lambda (id348 e1349 e2350)
                                     (let ((ids351 id348))
                                       (if (not (valid-bound-ids?139 ids351))
                                         (syntax-violation
                                           'lambda
                                           "invalid parameter list"
                                           e329)
                                         (let ((labels353
                                                 (gen-labels120 ids351))
                                               (new-vars354
                                                 (map gen-var161 ids351)))
                                           (k335 (map syntax->datum ids351)
                                                 new-vars354
                                                 (if docstring330
                                                   (syntax->datum docstring330)
                                                   #f)
                                                 (chi-body154
                                                   (cons e1349 e2350)
                                                   e329
                                                   (extend-var-env109
                                                     labels353
                                                     new-vars354
                                                     r332)
                                                   (make-binding-wrap131
                                                     ids351
                                                     labels353
                                                     w333)
                                                   mod334))))))
                                   tmp347)
                            ((lambda (tmp356)
                               (if tmp356
                                 (apply (lambda (ids357 e1358 e2359)
                                          (let ((old-ids360
                                                  (lambda-var-list162 ids357)))
                                            (if (not (valid-bound-ids?139
                                                       old-ids360))
                                              (syntax-violation
                                                'lambda
                                                "invalid parameter list"
                                                e329)
                                              (let ((labels361
                                                      (gen-labels120
                                                        old-ids360))
                                                    (new-vars362
                                                      (map gen-var161
                                                           old-ids360)))
                                                (k335 (letrec ((f363 (lambda (ls1364
                                                                              ls2365)
                                                                       (if (null? ls1364)
                                                                         (syntax->datum
                                                                           ls2365)
                                                                         (f363 (cdr ls1364)
                                                                               (cons (syntax->datum
                                                                                       (car ls1364))
                                                                                     ls2365))))))
                                                        (f363 (cdr old-ids360)
                                                              (car old-ids360)))
                                                      (letrec ((f366 (lambda (ls1367
                                                                              ls2368)
                                                                       (if (null? ls1367)
                                                                         ls2368
                                                                         (f366 (cdr ls1367)
                                                                               (cons (car ls1367)
                                                                                     ls2368))))))
                                                        (f366 (cdr new-vars362)
                                                              (car new-vars362)))
                                                      (if docstring330
                                                        (syntax->datum
                                                          docstring330)
                                                        #f)
                                                      (chi-body154
                                                        (cons e1358 e2359)
                                                        e329
                                                        (extend-var-env109
                                                          labels361
                                                          new-vars362
                                                          r332)
                                                        (make-binding-wrap131
                                                          old-ids360
                                                          labels361
                                                          w333)
                                                        mod334))))))
                                        tmp356)
                                 ((lambda (_370)
                                    (syntax-violation
                                      'lambda
                                      "bad lambda"
                                      e329))
                                  tmp336)))
                             ($sc-dispatch
                               tmp336
                               '(any any . each-any)))))
                        ($sc-dispatch
                          tmp336
                          '(each-any any . each-any)))))
                   ($sc-dispatch
                     tmp336
                     '(any any any . each-any))))
                c331)))
           (chi-body154
             (lambda (body371 outer-form372 r373 w374 mod375)
               (let ((r376 (cons (quote ("placeholder" placeholder)) r373)))
                 (let ((ribcage377
                         (make-ribcage121
                           '()
                           '()
                           '())))
                   (let ((w378 (make-wrap116
                                 (wrap-marks117 w374)
                                 (cons ribcage377 (wrap-subst118 w374)))))
                     (letrec ((parse379
                                (lambda (body380
                                         ids381
                                         labels382
                                         var-ids383
                                         vars384
                                         vals385
                                         bindings386)
                                  (if (null? body380)
                                    (syntax-violation
                                      #f
                                      "no expressions in body"
                                      outer-form372)
                                    (let ((e388 (cdar body380))
                                          (er389 (caar body380)))
                                      (call-with-values
                                        (lambda ()
                                          (syntax-type148
                                            e388
                                            er389
                                            '(())
                                            (source-annotation105 er389)
                                            ribcage377
                                            mod375
                                            #f))
                                        (lambda (type390
                                                 value391
                                                 e392
                                                 w393
                                                 s394
                                                 mod395)
                                          (if (memv type390
                                                    '(define-form))
                                            (let ((id396 (wrap142
                                                           value391
                                                           w393
                                                           mod395))
                                                  (label397 (gen-label119)))
                                              (let ((var398
                                                      (gen-var161 id396)))
                                                (begin
                                                  (extend-ribcage!130
                                                    ribcage377
                                                    id396
                                                    label397)
                                                  (parse379
                                                    (cdr body380)
                                                    (cons id396 ids381)
                                                    (cons label397 labels382)
                                                    (cons id396 var-ids383)
                                                    (cons var398 vars384)
                                                    (cons (cons er389
                                                                (wrap142
                                                                  e392
                                                                  w393
                                                                  mod395))
                                                          vals385)
                                                    (cons (cons 'lexical
                                                                var398)
                                                          bindings386)))))
                                            (if (memv type390
                                                      '(define-syntax-form))
                                              (let ((id399 (wrap142
                                                             value391
                                                             w393
                                                             mod395))
                                                    (label400 (gen-label119)))
                                                (begin
                                                  (extend-ribcage!130
                                                    ribcage377
                                                    id399
                                                    label400)
                                                  (parse379
                                                    (cdr body380)
                                                    (cons id399 ids381)
                                                    (cons label400 labels382)
                                                    var-ids383
                                                    vars384
                                                    vals385
                                                    (cons (cons 'macro
                                                                (cons er389
                                                                      (wrap142
                                                                        e392
                                                                        w393
                                                                        mod395)))
                                                          bindings386))))
                                              (if (memv type390
                                                        '(begin-form))
                                                ((lambda (tmp401)
                                                   ((lambda (tmp402)
                                                      (if tmp402
                                                        (apply (lambda (_403
                                                                        e1404)
                                                                 (parse379
                                                                   (letrec ((f405 (lambda (forms406)
                                                                                    (if (null? forms406)
                                                                                      (cdr body380)
                                                                                      (cons (cons er389
                                                                                                  (wrap142
                                                                                                    (car forms406)
                                                                                                    w393
                                                                                                    mod395))
                                                                                            (f405 (cdr forms406)))))))
                                                                     (f405 e1404))
                                                                   ids381
                                                                   labels382
                                                                   var-ids383
                                                                   vars384
                                                                   vals385
                                                                   bindings386))
                                                               tmp402)
                                                        (syntax-violation
                                                          #f
                                                          "source expression failed to match any pattern"
                                                          tmp401)))
                                                    ($sc-dispatch
                                                      tmp401
                                                      '(any . each-any))))
                                                 e392)
                                                (if (memv type390
                                                          '(local-syntax-form))
                                                  (chi-local-syntax156
                                                    value391
                                                    e392
                                                    er389
                                                    w393
                                                    s394
                                                    mod395
                                                    (lambda (forms408
                                                             er409
                                                             w410
                                                             s411
                                                             mod412)
                                                      (parse379
                                                        (letrec ((f413 (lambda (forms414)
                                                                         (if (null? forms414)
                                                                           (cdr body380)
                                                                           (cons (cons er409
                                                                                       (wrap142
                                                                                         (car forms414)
                                                                                         w410
                                                                                         mod412))
                                                                                 (f413 (cdr forms414)))))))
                                                          (f413 forms408))
                                                        ids381
                                                        labels382
                                                        var-ids383
                                                        vars384
                                                        vals385
                                                        bindings386)))
                                                  (if (null? ids381)
                                                    (build-sequence93
                                                      #f
                                                      (map (lambda (x415)
                                                             (chi150
                                                               (cdr x415)
                                                               (car x415)
                                                               '(())
                                                               mod395))
                                                           (cons (cons er389
                                                                       (source-wrap143
                                                                         e392
                                                                         w393
                                                                         s394
                                                                         mod395))
                                                                 (cdr body380))))
                                                    (begin
                                                      (if (not (valid-bound-ids?139
                                                                 ids381))
                                                        (syntax-violation
                                                          #f
                                                          "invalid or duplicate identifier in definition"
                                                          outer-form372))
                                                      (letrec ((loop416
                                                                 (lambda (bs417
                                                                          er-cache418
                                                                          r-cache419)
                                                                   (if (not (null? bs417))
                                                                     (let ((b420 (car bs417)))
                                                                       (if (eq? (car b420)
                                                                                'macro)
                                                                         (let ((er421 (cadr b420)))
                                                                           (let ((r-cache422
                                                                                   (if (eq? er421
                                                                                            er-cache418)
                                                                                     r-cache419
                                                                                     (macros-only-env110
                                                                                       er421))))
                                                                             (begin
                                                                               (set-cdr!
                                                                                 b420
                                                                                 (eval-local-transformer157
                                                                                   (chi150
                                                                                     (cddr b420)
                                                                                     r-cache422
                                                                                     '(())
                                                                                     mod395)
                                                                                   mod395))
                                                                               (loop416
                                                                                 (cdr bs417)
                                                                                 er421
                                                                                 r-cache422))))
                                                                         (loop416
                                                                           (cdr bs417)
                                                                           er-cache418
                                                                           r-cache419)))))))
                                                        (loop416
                                                          bindings386
                                                          #f
                                                          #f))
                                                      (set-cdr!
                                                        r376
                                                        (extend-env108
                                                          labels382
                                                          bindings386
                                                          (cdr r376)))
                                                      (build-letrec96
                                                        #f
                                                        (map syntax->datum
                                                             var-ids383)
                                                        vars384
                                                        (map (lambda (x423)
                                                               (chi150
                                                                 (cdr x423)
                                                                 (car x423)
                                                                 '(())
                                                                 mod395))
                                                             vals385)
                                                        (build-sequence93
                                                          #f
                                                          (map (lambda (x424)
                                                                 (chi150
                                                                   (cdr x424)
                                                                   (car x424)
                                                                   '(())
                                                                   mod395))
                                                               (cons (cons er389
                                                                           (source-wrap143
                                                                             e392
                                                                             w393
                                                                             s394
                                                                             mod395))
                                                                     (cdr body380))))))))))))))))))
                       (parse379
                         (map (lambda (x387)
                                (cons r376 (wrap142 x387 w378 mod375)))
                              body371)
                         '()
                         '()
                         '()
                         '()
                         '()
                         '())))))))
           (chi-macro153
             (lambda (p425 e426 r427 w428 rib429 mod430)
               (letrec ((rebuild-macro-output431
                          (lambda (x432 m433)
                            (if (pair? x432)
                              (cons (rebuild-macro-output431 (car x432) m433)
                                    (rebuild-macro-output431 (cdr x432) m433))
                              (if (syntax-object?98 x432)
                                (let ((w434 (syntax-object-wrap100 x432)))
                                  (let ((ms435 (wrap-marks117 w434))
                                        (s436 (wrap-subst118 w434)))
                                    (if (if (pair? ms435)
                                          (eq? (car ms435) #f)
                                          #f)
                                      (make-syntax-object97
                                        (syntax-object-expression99 x432)
                                        (make-wrap116
                                          (cdr ms435)
                                          (if rib429
                                            (cons rib429 (cdr s436))
                                            (cdr s436)))
                                        (syntax-object-module101 x432))
                                      (make-syntax-object97
                                        (syntax-object-expression99 x432)
                                        (make-wrap116
                                          (cons m433 ms435)
                                          (if rib429
                                            (cons rib429
                                                  (cons (quote shift) s436))
                                            (cons (quote shift) s436)))
                                        (let ((pmod437
                                                (procedure-module p425)))
                                          (if pmod437
                                            (cons 'hygiene
                                                  (module-name pmod437))
                                            '(hygiene guile)))))))
                                (if (vector? x432)
                                  (let ((n438 (vector-length x432)))
                                    (let ((v439 (make-vector n438)))
                                      (letrec ((loop440
                                                 (lambda (i441)
                                                   (if (fx=74 i441 n438)
                                                     (begin (if #f #f) v439)
                                                     (begin
                                                       (vector-set!
                                                         v439
                                                         i441
                                                         (rebuild-macro-output431
                                                           (vector-ref
                                                             x432
                                                             i441)
                                                           m433))
                                                       (loop440
                                                         (fx+72 i441 1)))))))
                                        (loop440 0))))
                                  (if (symbol? x432)
                                    (syntax-violation
                                      #f
                                      "encountered raw symbol in macro output"
                                      (source-wrap143 e426 w428 s mod430)
                                      x432)
                                    x432)))))))
                 (rebuild-macro-output431
                   (p425 (wrap142 e426 (anti-mark129 w428) mod430))
                   (string #\m)))))
           (chi-application152
             (lambda (x442 e443 r444 w445 s446 mod447)
               ((lambda (tmp448)
                  ((lambda (tmp449)
                     (if tmp449
                       (apply (lambda (e0450 e1451)
                                (build-application81
                                  s446
                                  x442
                                  (map (lambda (e452)
                                         (chi150 e452 r444 w445 mod447))
                                       e1451)))
                              tmp449)
                       (syntax-violation
                         #f
                         "source expression failed to match any pattern"
                         tmp448)))
                   ($sc-dispatch tmp448 (quote (any . each-any)))))
                e443)))
           (chi-expr151
             (lambda (type454 value455 e456 r457 w458 s459 mod460)
               (if (memv type454 (quote (lexical)))
                 (build-lexical-reference83
                   'value
                   s459
                   e456
                   value455)
                 (if (memv type454 (quote (core core-form)))
                   (value455 e456 r457 w458 s459 mod460)
                   (if (memv type454 (quote (module-ref)))
                     (call-with-values
                       (lambda () (value455 e456))
                       (lambda (id461 mod462)
                         (build-global-reference86 s459 id461 mod462)))
                     (if (memv type454 (quote (lexical-call)))
                       (chi-application152
                         (build-lexical-reference83
                           'fun
                           (source-annotation105 (car e456))
                           (car e456)
                           value455)
                         e456
                         r457
                         w458
                         s459
                         mod460)
                       (if (memv type454 (quote (global-call)))
                         (chi-application152
                           (build-global-reference86
                             (source-annotation105 (car e456))
                             (if (syntax-object?98 value455)
                               (syntax-object-expression99 value455)
                               value455)
                             (if (syntax-object?98 value455)
                               (syntax-object-module101 value455)
                               mod460))
                           e456
                           r457
                           w458
                           s459
                           mod460)
                         (if (memv type454 (quote (constant)))
                           (build-data92
                             s459
                             (strip160
                               (source-wrap143 e456 w458 s459 mod460)
                               '(())))
                           (if (memv type454 (quote (global)))
                             (build-global-reference86 s459 value455 mod460)
                             (if (memv type454 (quote (call)))
                               (chi-application152
                                 (chi150 (car e456) r457 w458 mod460)
                                 e456
                                 r457
                                 w458
                                 s459
                                 mod460)
                               (if (memv type454 (quote (begin-form)))
                                 ((lambda (tmp463)
                                    ((lambda (tmp464)
                                       (if tmp464
                                         (apply (lambda (_465 e1466 e2467)
                                                  (chi-sequence144
                                                    (cons e1466 e2467)
                                                    r457
                                                    w458
                                                    s459
                                                    mod460))
                                                tmp464)
                                         (syntax-violation
                                           #f
                                           "source expression failed to match any pattern"
                                           tmp463)))
                                     ($sc-dispatch
                                       tmp463
                                       '(any any . each-any))))
                                  e456)
                                 (if (memv type454 (quote (local-syntax-form)))
                                   (chi-local-syntax156
                                     value455
                                     e456
                                     r457
                                     w458
                                     s459
                                     mod460
                                     chi-sequence144)
                                   (if (memv type454 (quote (eval-when-form)))
                                     ((lambda (tmp469)
                                        ((lambda (tmp470)
                                           (if tmp470
                                             (apply (lambda (_471
                                                             x472
                                                             e1473
                                                             e2474)
                                                      (let ((when-list475
                                                              (chi-when-list147
                                                                e456
                                                                x472
                                                                w458)))
                                                        (if (memq 'eval
                                                                  when-list475)
                                                          (chi-sequence144
                                                            (cons e1473 e2474)
                                                            r457
                                                            w458
                                                            s459
                                                            mod460)
                                                          (chi-void158))))
                                                    tmp470)
                                             (syntax-violation
                                               #f
                                               "source expression failed to match any pattern"
                                               tmp469)))
                                         ($sc-dispatch
                                           tmp469
                                           '(any each-any any . each-any))))
                                      e456)
                                     (if (memv type454
                                               '(define-form
                                                  define-syntax-form))
                                       (syntax-violation
                                         #f
                                         "definition in expression context"
                                         e456
                                         (wrap142 value455 w458 mod460))
                                       (if (memv type454 (quote (syntax)))
                                         (syntax-violation
                                           #f
                                           "reference to pattern variable outside syntax form"
                                           (source-wrap143
                                             e456
                                             w458
                                             s459
                                             mod460))
                                         (if (memv type454
                                                   '(displaced-lexical))
                                           (syntax-violation
                                             #f
                                             "reference to identifier outside its scope"
                                             (source-wrap143
                                               e456
                                               w458
                                               s459
                                               mod460))
                                           (syntax-violation
                                             #f
                                             "unexpected syntax"
                                             (source-wrap143
                                               e456
                                               w458
                                               s459
                                               mod460))))))))))))))))))
           (chi150
             (lambda (e478 r479 w480 mod481)
               (call-with-values
                 (lambda ()
                   (syntax-type148
                     e478
                     r479
                     w480
                     (source-annotation105 e478)
                     #f
                     mod481
                     #f))
                 (lambda (type482 value483 e484 w485 s486 mod487)
                   (chi-expr151
                     type482
                     value483
                     e484
                     r479
                     w485
                     s486
                     mod487)))))
           (chi-top149
             (lambda (e488 r489 w490 m491 esew492 mod493)
               (call-with-values
                 (lambda ()
                   (syntax-type148
                     e488
                     r489
                     w490
                     (source-annotation105 e488)
                     #f
                     mod493
                     #f))
                 (lambda (type501 value502 e503 w504 s505 mod506)
                   (if (memv type501 (quote (begin-form)))
                     ((lambda (tmp507)
                        ((lambda (tmp508)
                           (if tmp508
                             (apply (lambda (_509) (chi-void158)) tmp508)
                             ((lambda (tmp510)
                                (if tmp510
                                  (apply (lambda (_511 e1512 e2513)
                                           (chi-top-sequence145
                                             (cons e1512 e2513)
                                             r489
                                             w504
                                             s505
                                             m491
                                             esew492
                                             mod506))
                                         tmp510)
                                  (syntax-violation
                                    #f
                                    "source expression failed to match any pattern"
                                    tmp507)))
                              ($sc-dispatch
                                tmp507
                                '(any any . each-any)))))
                         ($sc-dispatch tmp507 (quote (any)))))
                      e503)
                     (if (memv type501 (quote (local-syntax-form)))
                       (chi-local-syntax156
                         value502
                         e503
                         r489
                         w504
                         s505
                         mod506
                         (lambda (body515 r516 w517 s518 mod519)
                           (chi-top-sequence145
                             body515
                             r516
                             w517
                             s518
                             m491
                             esew492
                             mod519)))
                       (if (memv type501 (quote (eval-when-form)))
                         ((lambda (tmp520)
                            ((lambda (tmp521)
                               (if tmp521
                                 (apply (lambda (_522 x523 e1524 e2525)
                                          (let ((when-list526
                                                  (chi-when-list147
                                                    e503
                                                    x523
                                                    w504))
                                                (body527 (cons e1524 e2525)))
                                            (if (eq? m491 (quote e))
                                              (if (memq 'eval
                                                        when-list526)
                                                (chi-top-sequence145
                                                  body527
                                                  r489
                                                  w504
                                                  s505
                                                  'e
                                                  '(eval)
                                                  mod506)
                                                (chi-void158))
                                              (if (memq 'load
                                                        when-list526)
                                                (if (let ((t530 (memq 'compile
                                                                      when-list526)))
                                                      (if t530
                                                        t530
                                                        (if (eq? m491
                                                                 'c&e)
                                                          (memq 'eval
                                                                when-list526)
                                                          #f)))
                                                  (chi-top-sequence145
                                                    body527
                                                    r489
                                                    w504
                                                    s505
                                                    'c&e
                                                    '(compile load)
                                                    mod506)
                                                  (if (memq m491
                                                            '(c c&e))
                                                    (chi-top-sequence145
                                                      body527
                                                      r489
                                                      w504
                                                      s505
                                                      'c
                                                      '(load)
                                                      mod506)
                                                    (chi-void158)))
                                                (if (let ((t531 (memq 'compile
                                                                      when-list526)))
                                                      (if t531
                                                        t531
                                                        (if (eq? m491
                                                                 'c&e)
                                                          (memq 'eval
                                                                when-list526)
                                                          #f)))
                                                  (begin
                                                    (top-level-eval-hook76
                                                      (chi-top-sequence145
                                                        body527
                                                        r489
                                                        w504
                                                        s505
                                                        'e
                                                        '(eval)
                                                        mod506)
                                                      mod506)
                                                    (chi-void158))
                                                  (chi-void158))))))
                                        tmp521)
                                 (syntax-violation
                                   #f
                                   "source expression failed to match any pattern"
                                   tmp520)))
                             ($sc-dispatch
                               tmp520
                               '(any each-any any . each-any))))
                          e503)
                         (if (memv type501 (quote (define-syntax-form)))
                           (let ((n532 (id-var-name136 value502 w504))
                                 (r533 (macros-only-env110 r489)))
                             (if (memv m491 (quote (c)))
                               (if (memq (quote compile) esew492)
                                 (let ((e534 (chi-install-global146
                                               n532
                                               (chi150
                                                 e503
                                                 r533
                                                 w504
                                                 mod506))))
                                   (begin
                                     (top-level-eval-hook76 e534 mod506)
                                     (if (memq (quote load) esew492)
                                       e534
                                       (chi-void158))))
                                 (if (memq (quote load) esew492)
                                   (chi-install-global146
                                     n532
                                     (chi150 e503 r533 w504 mod506))
                                   (chi-void158)))
                               (if (memv m491 (quote (c&e)))
                                 (let ((e535 (chi-install-global146
                                               n532
                                               (chi150
                                                 e503
                                                 r533
                                                 w504
                                                 mod506))))
                                   (begin
                                     (top-level-eval-hook76 e535 mod506)
                                     e535))
                                 (begin
                                   (if (memq (quote eval) esew492)
                                     (top-level-eval-hook76
                                       (chi-install-global146
                                         n532
                                         (chi150 e503 r533 w504 mod506))
                                       mod506))
                                   (chi-void158)))))
                           (if (memv type501 (quote (define-form)))
                             (let ((n536 (id-var-name136 value502 w504)))
                               (let ((type537
                                       (binding-type106
                                         (lookup111 n536 r489 mod506))))
                                 (if (memv type537
                                           '(global core macro module-ref))
                                   (begin
                                     (if (if (not (module-local-variable
                                                    (current-module)
                                                    n536))
                                           (current-module)
                                           #f)
                                       (module-define!
                                         (current-module)
                                         n536
                                         #f))
                                     (let ((x538 (build-global-definition89
                                                   s505
                                                   n536
                                                   (chi150
                                                     e503
                                                     r489
                                                     w504
                                                     mod506))))
                                       (begin
                                         (if (eq? m491 (quote c&e))
                                           (top-level-eval-hook76 x538 mod506))
                                         x538)))
                                   (if (memv type537
                                             '(displaced-lexical))
                                     (syntax-violation
                                       #f
                                       "identifier out of context"
                                       e503
                                       (wrap142 value502 w504 mod506))
                                     (syntax-violation
                                       #f
                                       "cannot define keyword at top level"
                                       e503
                                       (wrap142 value502 w504 mod506))))))
                             (let ((x539 (chi-expr151
                                           type501
                                           value502
                                           e503
                                           r489
                                           w504
                                           s505
                                           mod506)))
                               (begin
                                 (if (eq? m491 (quote c&e))
                                   (top-level-eval-hook76 x539 mod506))
                                 x539)))))))))))
           (syntax-type148
             (lambda (e540 r541 w542 s543 rib544 mod545 for-car?546)
               (if (symbol? e540)
                 (let ((n547 (id-var-name136 e540 w542)))
                   (let ((b548 (lookup111 n547 r541 mod545)))
                     (let ((type549 (binding-type106 b548)))
                       (if (memv type549 (quote (lexical)))
                         (values
                           type549
                           (binding-value107 b548)
                           e540
                           w542
                           s543
                           mod545)
                         (if (memv type549 (quote (global)))
                           (values type549 n547 e540 w542 s543 mod545)
                           (if (memv type549 (quote (macro)))
                             (if for-car?546
                               (values
                                 type549
                                 (binding-value107 b548)
                                 e540
                                 w542
                                 s543
                                 mod545)
                               (syntax-type148
                                 (chi-macro153
                                   (binding-value107 b548)
                                   e540
                                   r541
                                   w542
                                   rib544
                                   mod545)
                                 r541
                                 '(())
                                 s543
                                 rib544
                                 mod545
                                 #f))
                             (values
                               type549
                               (binding-value107 b548)
                               e540
                               w542
                               s543
                               mod545)))))))
                 (if (pair? e540)
                   (let ((first550 (car e540)))
                     (call-with-values
                       (lambda ()
                         (syntax-type148
                           first550
                           r541
                           w542
                           s543
                           rib544
                           mod545
                           #t))
                       (lambda (ftype551 fval552 fe553 fw554 fs555 fmod556)
                         (if (memv ftype551 (quote (lexical)))
                           (values
                             'lexical-call
                             fval552
                             e540
                             w542
                             s543
                             mod545)
                           (if (memv ftype551 (quote (global)))
                             (values
                               'global-call
                               (make-syntax-object97 fval552 w542 fmod556)
                               e540
                               w542
                               s543
                               mod545)
                             (if (memv ftype551 (quote (macro)))
                               (syntax-type148
                                 (chi-macro153
                                   fval552
                                   e540
                                   r541
                                   w542
                                   rib544
                                   mod545)
                                 r541
                                 '(())
                                 s543
                                 rib544
                                 mod545
                                 for-car?546)
                               (if (memv ftype551 (quote (module-ref)))
                                 (call-with-values
                                   (lambda () (fval552 e540))
                                   (lambda (sym557 mod558)
                                     (syntax-type148
                                       sym557
                                       r541
                                       w542
                                       s543
                                       rib544
                                       mod558
                                       for-car?546)))
                                 (if (memv ftype551 (quote (core)))
                                   (values
                                     'core-form
                                     fval552
                                     e540
                                     w542
                                     s543
                                     mod545)
                                   (if (memv ftype551 (quote (local-syntax)))
                                     (values
                                       'local-syntax-form
                                       fval552
                                       e540
                                       w542
                                       s543
                                       mod545)
                                     (if (memv ftype551 (quote (begin)))
                                       (values
                                         'begin-form
                                         #f
                                         e540
                                         w542
                                         s543
                                         mod545)
                                       (if (memv ftype551 (quote (eval-when)))
                                         (values
                                           'eval-when-form
                                           #f
                                           e540
                                           w542
                                           s543
                                           mod545)
                                         (if (memv ftype551 (quote (define)))
                                           ((lambda (tmp559)
                                              ((lambda (tmp560)
                                                 (if (if tmp560
                                                       (apply (lambda (_561
                                                                       name562
                                                                       val563)
                                                                (id?114
                                                                  name562))
                                                              tmp560)
                                                       #f)
                                                   (apply (lambda (_564
                                                                   name565
                                                                   val566)
                                                            (values
                                                              'define-form
                                                              name565
                                                              val566
                                                              w542
                                                              s543
                                                              mod545))
                                                          tmp560)
                                                   ((lambda (tmp567)
                                                      (if (if tmp567
                                                            (apply (lambda (_568
                                                                            name569
                                                                            args570
                                                                            e1571
                                                                            e2572)
                                                                     (if (id?114
                                                                           name569)
                                                                       (valid-bound-ids?139
                                                                         (lambda-var-list162
                                                                           args570))
                                                                       #f))
                                                                   tmp567)
                                                            #f)
                                                        (apply (lambda (_573
                                                                        name574
                                                                        args575
                                                                        e1576
                                                                        e2577)
                                                                 (values
                                                                   'define-form
                                                                   (wrap142
                                                                     name574
                                                                     w542
                                                                     mod545)
                                                                   (cons '#(syntax-object
                                                                            lambda
                                                                            ((top)
                                                                             #(ribcage
                                                                               #(_
                                                                                 name
                                                                                 args
                                                                                 e1
                                                                                 e2)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(ftype
                                                                                 fval
                                                                                 fe
                                                                                 fw
                                                                                 fs
                                                                                 fmod)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(first)
                                                                               #((top))
                                                                               #("i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(e
                                                                                 r
                                                                                 w
                                                                                 s
                                                                                 rib
                                                                                 mod
                                                                                 for-car?)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               (lambda-var-list
                                                                                 gen-var
                                                                                 strip
                                                                                 ellipsis?
                                                                                 chi-void
                                                                                 eval-local-transformer
                                                                                 chi-local-syntax
                                                                                 chi-lambda-clause
                                                                                 chi-body
                                                                                 chi-macro
                                                                                 chi-application
                                                                                 chi-expr
                                                                                 chi
                                                                                 chi-top
                                                                                 syntax-type
                                                                                 chi-when-list
                                                                                 chi-install-global
                                                                                 chi-top-sequence
                                                                                 chi-sequence
                                                                                 source-wrap
                                                                                 wrap
                                                                                 bound-id-member?
                                                                                 distinct-bound-ids?
                                                                                 valid-bound-ids?
                                                                                 bound-id=?
                                                                                 free-id=?
                                                                                 id-var-name
                                                                                 same-marks?
                                                                                 join-marks
                                                                                 join-wraps
                                                                                 smart-append
                                                                                 make-binding-wrap
                                                                                 extend-ribcage!
                                                                                 make-empty-ribcage
                                                                                 new-mark
                                                                                 anti-mark
                                                                                 the-anti-mark
                                                                                 top-marked?
                                                                                 top-wrap
                                                                                 empty-wrap
                                                                                 set-ribcage-labels!
                                                                                 set-ribcage-marks!
                                                                                 set-ribcage-symnames!
                                                                                 ribcage-labels
                                                                                 ribcage-marks
                                                                                 ribcage-symnames
                                                                                 ribcage?
                                                                                 make-ribcage
                                                                                 gen-labels
                                                                                 gen-label
                                                                                 make-rename
                                                                                 rename-marks
                                                                                 rename-new
                                                                                 rename-old
                                                                                 subst-rename?
                                                                                 wrap-subst
                                                                                 wrap-marks
                                                                                 make-wrap
                                                                                 id-sym-name&marks
                                                                                 id-sym-name
                                                                                 id?
                                                                                 nonsymbol-id?
                                                                                 global-extend
                                                                                 lookup
                                                                                 macros-only-env
                                                                                 extend-var-env
                                                                                 extend-env
                                                                                 null-env
                                                                                 binding-value
                                                                                 binding-type
                                                                                 make-binding
                                                                                 arg-check
                                                                                 source-annotation
                                                                                 no-source
                                                                                 set-syntax-object-module!
                                                                                 set-syntax-object-wrap!
                                                                                 set-syntax-object-expression!
                                                                                 syntax-object-module
                                                                                 syntax-object-wrap
                                                                                 syntax-object-expression
                                                                                 syntax-object?
                                                                                 make-syntax-object
                                                                                 build-lexical-var
                                                                                 build-letrec
                                                                                 build-named-let
                                                                                 build-let
                                                                                 build-sequence
                                                                                 build-data
                                                                                 build-primref
                                                                                 build-lambda
                                                                                 build-global-definition
                                                                                 maybe-name-value!
                                                                                 build-global-assignment
                                                                                 build-global-reference
                                                                                 analyze-variable
                                                                                 build-lexical-assignment
                                                                                 build-lexical-reference
                                                                                 build-conditional
                                                                                 build-application
                                                                                 build-void
                                                                                 get-global-definition-hook
                                                                                 put-global-definition-hook
                                                                                 gensym-hook
                                                                                 local-eval-hook
                                                                                 top-level-eval-hook
                                                                                 fx<
                                                                                 fx=
                                                                                 fx-
                                                                                 fx+
                                                                                 *mode*
                                                                                 noexpand)
                                                                               ((top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top))
                                                                               ("i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"))
                                                                             #(ribcage
                                                                               (define-structure
                                                                                 and-map*)
                                                                               ((top)
                                                                                (top))
                                                                               ("i"
                                                                                "i")))
                                                                            (hygiene
                                                                              guile))
                                                                         (wrap142
                                                                           (cons args575
                                                                                 (cons e1576
                                                                                       e2577))
                                                                           w542
                                                                           mod545))
                                                                   '(())
                                                                   s543
                                                                   mod545))
                                                               tmp567)
                                                        ((lambda (tmp579)
                                                           (if (if tmp579
                                                                 (apply (lambda (_580
                                                                                 name581)
                                                                          (id?114
                                                                            name581))
                                                                        tmp579)
                                                                 #f)
                                                             (apply (lambda (_582
                                                                             name583)
                                                                      (values
                                                                        'define-form
                                                                        (wrap142
                                                                          name583
                                                                          w542
                                                                          mod545)
                                                                        '(#(syntax-object
                                                                            if
                                                                            ((top)
                                                                             #(ribcage
                                                                               #(_
                                                                                 name)
                                                                               #((top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(ftype
                                                                                 fval
                                                                                 fe
                                                                                 fw
                                                                                 fs
                                                                                 fmod)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(first)
                                                                               #((top))
                                                                               #("i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(e
                                                                                 r
                                                                                 w
                                                                                 s
                                                                                 rib
                                                                                 mod
                                                                                 for-car?)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               (lambda-var-list
                                                                                 gen-var
                                                                                 strip
                                                                                 ellipsis?
                                                                                 chi-void
                                                                                 eval-local-transformer
                                                                                 chi-local-syntax
                                                                                 chi-lambda-clause
                                                                                 chi-body
                                                                                 chi-macro
                                                                                 chi-application
                                                                                 chi-expr
                                                                                 chi
                                                                                 chi-top
                                                                                 syntax-type
                                                                                 chi-when-list
                                                                                 chi-install-global
                                                                                 chi-top-sequence
                                                                                 chi-sequence
                                                                                 source-wrap
                                                                                 wrap
                                                                                 bound-id-member?
                                                                                 distinct-bound-ids?
                                                                                 valid-bound-ids?
                                                                                 bound-id=?
                                                                                 free-id=?
                                                                                 id-var-name
                                                                                 same-marks?
                                                                                 join-marks
                                                                                 join-wraps
                                                                                 smart-append
                                                                                 make-binding-wrap
                                                                                 extend-ribcage!
                                                                                 make-empty-ribcage
                                                                                 new-mark
                                                                                 anti-mark
                                                                                 the-anti-mark
                                                                                 top-marked?
                                                                                 top-wrap
                                                                                 empty-wrap
                                                                                 set-ribcage-labels!
                                                                                 set-ribcage-marks!
                                                                                 set-ribcage-symnames!
                                                                                 ribcage-labels
                                                                                 ribcage-marks
                                                                                 ribcage-symnames
                                                                                 ribcage?
                                                                                 make-ribcage
                                                                                 gen-labels
                                                                                 gen-label
                                                                                 make-rename
                                                                                 rename-marks
                                                                                 rename-new
                                                                                 rename-old
                                                                                 subst-rename?
                                                                                 wrap-subst
                                                                                 wrap-marks
                                                                                 make-wrap
                                                                                 id-sym-name&marks
                                                                                 id-sym-name
                                                                                 id?
                                                                                 nonsymbol-id?
                                                                                 global-extend
                                                                                 lookup
                                                                                 macros-only-env
                                                                                 extend-var-env
                                                                                 extend-env
                                                                                 null-env
                                                                                 binding-value
                                                                                 binding-type
                                                                                 make-binding
                                                                                 arg-check
                                                                                 source-annotation
                                                                                 no-source
                                                                                 set-syntax-object-module!
                                                                                 set-syntax-object-wrap!
                                                                                 set-syntax-object-expression!
                                                                                 syntax-object-module
                                                                                 syntax-object-wrap
                                                                                 syntax-object-expression
                                                                                 syntax-object?
                                                                                 make-syntax-object
                                                                                 build-lexical-var
                                                                                 build-letrec
                                                                                 build-named-let
                                                                                 build-let
                                                                                 build-sequence
                                                                                 build-data
                                                                                 build-primref
                                                                                 build-lambda
                                                                                 build-global-definition
                                                                                 maybe-name-value!
                                                                                 build-global-assignment
                                                                                 build-global-reference
                                                                                 analyze-variable
                                                                                 build-lexical-assignment
                                                                                 build-lexical-reference
                                                                                 build-conditional
                                                                                 build-application
                                                                                 build-void
                                                                                 get-global-definition-hook
                                                                                 put-global-definition-hook
                                                                                 gensym-hook
                                                                                 local-eval-hook
                                                                                 top-level-eval-hook
                                                                                 fx<
                                                                                 fx=
                                                                                 fx-
                                                                                 fx+
                                                                                 *mode*
                                                                                 noexpand)
                                                                               ((top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top))
                                                                               ("i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"))
                                                                             #(ribcage
                                                                               (define-structure
                                                                                 and-map*)
                                                                               ((top)
                                                                                (top))
                                                                               ("i"
                                                                                "i")))
                                                                            (hygiene
                                                                              guile))
                                                                          #(syntax-object
                                                                            #f
                                                                            ((top)
                                                                             #(ribcage
                                                                               #(_
                                                                                 name)
                                                                               #((top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(ftype
                                                                                 fval
                                                                                 fe
                                                                                 fw
                                                                                 fs
                                                                                 fmod)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(first)
                                                                               #((top))
                                                                               #("i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(e
                                                                                 r
                                                                                 w
                                                                                 s
                                                                                 rib
                                                                                 mod
                                                                                 for-car?)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               (lambda-var-list
                                                                                 gen-var
                                                                                 strip
                                                                                 ellipsis?
                                                                                 chi-void
                                                                                 eval-local-transformer
                                                                                 chi-local-syntax
                                                                                 chi-lambda-clause
                                                                                 chi-body
                                                                                 chi-macro
                                                                                 chi-application
                                                                                 chi-expr
                                                                                 chi
                                                                                 chi-top
                                                                                 syntax-type
                                                                                 chi-when-list
                                                                                 chi-install-global
                                                                                 chi-top-sequence
                                                                                 chi-sequence
                                                                                 source-wrap
                                                                                 wrap
                                                                                 bound-id-member?
                                                                                 distinct-bound-ids?
                                                                                 valid-bound-ids?
                                                                                 bound-id=?
                                                                                 free-id=?
                                                                                 id-var-name
                                                                                 same-marks?
                                                                                 join-marks
                                                                                 join-wraps
                                                                                 smart-append
                                                                                 make-binding-wrap
                                                                                 extend-ribcage!
                                                                                 make-empty-ribcage
                                                                                 new-mark
                                                                                 anti-mark
                                                                                 the-anti-mark
                                                                                 top-marked?
                                                                                 top-wrap
                                                                                 empty-wrap
                                                                                 set-ribcage-labels!
                                                                                 set-ribcage-marks!
                                                                                 set-ribcage-symnames!
                                                                                 ribcage-labels
                                                                                 ribcage-marks
                                                                                 ribcage-symnames
                                                                                 ribcage?
                                                                                 make-ribcage
                                                                                 gen-labels
                                                                                 gen-label
                                                                                 make-rename
                                                                                 rename-marks
                                                                                 rename-new
                                                                                 rename-old
                                                                                 subst-rename?
                                                                                 wrap-subst
                                                                                 wrap-marks
                                                                                 make-wrap
                                                                                 id-sym-name&marks
                                                                                 id-sym-name
                                                                                 id?
                                                                                 nonsymbol-id?
                                                                                 global-extend
                                                                                 lookup
                                                                                 macros-only-env
                                                                                 extend-var-env
                                                                                 extend-env
                                                                                 null-env
                                                                                 binding-value
                                                                                 binding-type
                                                                                 make-binding
                                                                                 arg-check
                                                                                 source-annotation
                                                                                 no-source
                                                                                 set-syntax-object-module!
                                                                                 set-syntax-object-wrap!
                                                                                 set-syntax-object-expression!
                                                                                 syntax-object-module
                                                                                 syntax-object-wrap
                                                                                 syntax-object-expression
                                                                                 syntax-object?
                                                                                 make-syntax-object
                                                                                 build-lexical-var
                                                                                 build-letrec
                                                                                 build-named-let
                                                                                 build-let
                                                                                 build-sequence
                                                                                 build-data
                                                                                 build-primref
                                                                                 build-lambda
                                                                                 build-global-definition
                                                                                 maybe-name-value!
                                                                                 build-global-assignment
                                                                                 build-global-reference
                                                                                 analyze-variable
                                                                                 build-lexical-assignment
                                                                                 build-lexical-reference
                                                                                 build-conditional
                                                                                 build-application
                                                                                 build-void
                                                                                 get-global-definition-hook
                                                                                 put-global-definition-hook
                                                                                 gensym-hook
                                                                                 local-eval-hook
                                                                                 top-level-eval-hook
                                                                                 fx<
                                                                                 fx=
                                                                                 fx-
                                                                                 fx+
                                                                                 *mode*
                                                                                 noexpand)
                                                                               ((top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top))
                                                                               ("i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"))
                                                                             #(ribcage
                                                                               (define-structure
                                                                                 and-map*)
                                                                               ((top)
                                                                                (top))
                                                                               ("i"
                                                                                "i")))
                                                                            (hygiene
                                                                              guile))
                                                                          #(syntax-object
                                                                            #f
                                                                            ((top)
                                                                             #(ribcage
                                                                               #(_
                                                                                 name)
                                                                               #((top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(ftype
                                                                                 fval
                                                                                 fe
                                                                                 fw
                                                                                 fs
                                                                                 fmod)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(first)
                                                                               #((top))
                                                                               #("i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(e
                                                                                 r
                                                                                 w
                                                                                 s
                                                                                 rib
                                                                                 mod
                                                                                 for-car?)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               (lambda-var-list
                                                                                 gen-var
                                                                                 strip
                                                                                 ellipsis?
                                                                                 chi-void
                                                                                 eval-local-transformer
                                                                                 chi-local-syntax
                                                                                 chi-lambda-clause
                                                                                 chi-body
                                                                                 chi-macro
                                                                                 chi-application
                                                                                 chi-expr
                                                                                 chi
                                                                                 chi-top
                                                                                 syntax-type
                                                                                 chi-when-list
                                                                                 chi-install-global
                                                                                 chi-top-sequence
                                                                                 chi-sequence
                                                                                 source-wrap
                                                                                 wrap
                                                                                 bound-id-member?
                                                                                 distinct-bound-ids?
                                                                                 valid-bound-ids?
                                                                                 bound-id=?
                                                                                 free-id=?
                                                                                 id-var-name
                                                                                 same-marks?
                                                                                 join-marks
                                                                                 join-wraps
                                                                                 smart-append
                                                                                 make-binding-wrap
                                                                                 extend-ribcage!
                                                                                 make-empty-ribcage
                                                                                 new-mark
                                                                                 anti-mark
                                                                                 the-anti-mark
                                                                                 top-marked?
                                                                                 top-wrap
                                                                                 empty-wrap
                                                                                 set-ribcage-labels!
                                                                                 set-ribcage-marks!
                                                                                 set-ribcage-symnames!
                                                                                 ribcage-labels
                                                                                 ribcage-marks
                                                                                 ribcage-symnames
                                                                                 ribcage?
                                                                                 make-ribcage
                                                                                 gen-labels
                                                                                 gen-label
                                                                                 make-rename
                                                                                 rename-marks
                                                                                 rename-new
                                                                                 rename-old
                                                                                 subst-rename?
                                                                                 wrap-subst
                                                                                 wrap-marks
                                                                                 make-wrap
                                                                                 id-sym-name&marks
                                                                                 id-sym-name
                                                                                 id?
                                                                                 nonsymbol-id?
                                                                                 global-extend
                                                                                 lookup
                                                                                 macros-only-env
                                                                                 extend-var-env
                                                                                 extend-env
                                                                                 null-env
                                                                                 binding-value
                                                                                 binding-type
                                                                                 make-binding
                                                                                 arg-check
                                                                                 source-annotation
                                                                                 no-source
                                                                                 set-syntax-object-module!
                                                                                 set-syntax-object-wrap!
                                                                                 set-syntax-object-expression!
                                                                                 syntax-object-module
                                                                                 syntax-object-wrap
                                                                                 syntax-object-expression
                                                                                 syntax-object?
                                                                                 make-syntax-object
                                                                                 build-lexical-var
                                                                                 build-letrec
                                                                                 build-named-let
                                                                                 build-let
                                                                                 build-sequence
                                                                                 build-data
                                                                                 build-primref
                                                                                 build-lambda
                                                                                 build-global-definition
                                                                                 maybe-name-value!
                                                                                 build-global-assignment
                                                                                 build-global-reference
                                                                                 analyze-variable
                                                                                 build-lexical-assignment
                                                                                 build-lexical-reference
                                                                                 build-conditional
                                                                                 build-application
                                                                                 build-void
                                                                                 get-global-definition-hook
                                                                                 put-global-definition-hook
                                                                                 gensym-hook
                                                                                 local-eval-hook
                                                                                 top-level-eval-hook
                                                                                 fx<
                                                                                 fx=
                                                                                 fx-
                                                                                 fx+
                                                                                 *mode*
                                                                                 noexpand)
                                                                               ((top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top)
                                                                                (top))
                                                                               ("i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"
                                                                                "i"))
                                                                             #(ribcage
                                                                               (define-structure
                                                                                 and-map*)
                                                                               ((top)
                                                                                (top))
                                                                               ("i"
                                                                                "i")))
                                                                            (hygiene
                                                                              guile)))
                                                                        '(())
                                                                        s543
                                                                        mod545))
                                                                    tmp579)
                                                             (syntax-violation
                                                               #f
                                                               "source expression failed to match any pattern"
                                                               tmp559)))
                                                         ($sc-dispatch
                                                           tmp559
                                                           '(any any)))))
                                                    ($sc-dispatch
                                                      tmp559
                                                      '(any (any . any)
                                                            any
                                                            .
                                                            each-any)))))
                                               ($sc-dispatch
                                                 tmp559
                                                 '(any any any))))
                                            e540)
                                           (if (memv ftype551
                                                     '(define-syntax))
                                             ((lambda (tmp584)
                                                ((lambda (tmp585)
                                                   (if (if tmp585
                                                         (apply (lambda (_586
                                                                         name587
                                                                         val588)
                                                                  (id?114
                                                                    name587))
                                                                tmp585)
                                                         #f)
                                                     (apply (lambda (_589
                                                                     name590
                                                                     val591)
                                                              (values
                                                                'define-syntax-form
                                                                name590
                                                                val591
                                                                w542
                                                                s543
                                                                mod545))
                                                            tmp585)
                                                     (syntax-violation
                                                       #f
                                                       "source expression failed to match any pattern"
                                                       tmp584)))
                                                 ($sc-dispatch
                                                   tmp584
                                                   '(any any any))))
                                              e540)
                                             (values
                                               'call
                                               #f
                                               e540
                                               w542
                                               s543
                                               mod545))))))))))))))
                   (if (syntax-object?98 e540)
                     (syntax-type148
                       (syntax-object-expression99 e540)
                       r541
                       (join-wraps133 w542 (syntax-object-wrap100 e540))
                       s543
                       rib544
                       (let ((t592 (syntax-object-module101 e540)))
                         (if t592 t592 mod545))
                       for-car?546)
                     (if (self-evaluating? e540)
                       (values
                         'constant
                         #f
                         e540
                         w542
                         s543
                         mod545)
                       (values (quote other) #f e540 w542 s543 mod545)))))))
           (chi-when-list147
             (lambda (e593 when-list594 w595)
               (letrec ((f596 (lambda (when-list597 situations598)
                                (if (null? when-list597)
                                  situations598
                                  (f596 (cdr when-list597)
                                        (cons (let ((x599 (car when-list597)))
                                                (if (free-id=?137
                                                      x599
                                                      '#(syntax-object
                                                         compile
                                                         ((top)
                                                          #(ribcage () () ())
                                                          #(ribcage () () ())
                                                          #(ribcage () () ())
                                                          #(ribcage
                                                            #(x)
                                                            #((top))
                                                            #("i"))
                                                          #(ribcage () () ())
                                                          #(ribcage
                                                            #(f
                                                              when-list
                                                              situations)
                                                            #((top)
                                                              (top)
                                                              (top))
                                                            #("i" "i" "i"))
                                                          #(ribcage () () ())
                                                          #(ribcage
                                                            #(e when-list w)
                                                            #((top)
                                                              (top)
                                                              (top))
                                                            #("i" "i" "i"))
                                                          #(ribcage
                                                            (lambda-var-list
                                                              gen-var
                                                              strip
                                                              ellipsis?
                                                              chi-void
                                                              eval-local-transformer
                                                              chi-local-syntax
                                                              chi-lambda-clause
                                                              chi-body
                                                              chi-macro
                                                              chi-application
                                                              chi-expr
                                                              chi
                                                              chi-top
                                                              syntax-type
                                                              chi-when-list
                                                              chi-install-global
                                                              chi-top-sequence
                                                              chi-sequence
                                                              source-wrap
                                                              wrap
                                                              bound-id-member?
                                                              distinct-bound-ids?
                                                              valid-bound-ids?
                                                              bound-id=?
                                                              free-id=?
                                                              id-var-name
                                                              same-marks?
                                                              join-marks
                                                              join-wraps
                                                              smart-append
                                                              make-binding-wrap
                                                              extend-ribcage!
                                                              make-empty-ribcage
                                                              new-mark
                                                              anti-mark
                                                              the-anti-mark
                                                              top-marked?
                                                              top-wrap
                                                              empty-wrap
                                                              set-ribcage-labels!
                                                              set-ribcage-marks!
                                                              set-ribcage-symnames!
                                                              ribcage-labels
                                                              ribcage-marks
                                                              ribcage-symnames
                                                              ribcage?
                                                              make-ribcage
                                                              gen-labels
                                                              gen-label
                                                              make-rename
                                                              rename-marks
                                                              rename-new
                                                              rename-old
                                                              subst-rename?
                                                              wrap-subst
                                                              wrap-marks
                                                              make-wrap
                                                              id-sym-name&marks
                                                              id-sym-name
                                                              id?
                                                              nonsymbol-id?
                                                              global-extend
                                                              lookup
                                                              macros-only-env
                                                              extend-var-env
                                                              extend-env
                                                              null-env
                                                              binding-value
                                                              binding-type
                                                              make-binding
                                                              arg-check
                                                              source-annotation
                                                              no-source
                                                              set-syntax-object-module!
                                                              set-syntax-object-wrap!
                                                              set-syntax-object-expression!
                                                              syntax-object-module
                                                              syntax-object-wrap
                                                              syntax-object-expression
                                                              syntax-object?
                                                              make-syntax-object
                                                              build-lexical-var
                                                              build-letrec
                                                              build-named-let
                                                              build-let
                                                              build-sequence
                                                              build-data
                                                              build-primref
                                                              build-lambda
                                                              build-global-definition
                                                              maybe-name-value!
                                                              build-global-assignment
                                                              build-global-reference
                                                              analyze-variable
                                                              build-lexical-assignment
                                                              build-lexical-reference
                                                              build-conditional
                                                              build-application
                                                              build-void
                                                              get-global-definition-hook
                                                              put-global-definition-hook
                                                              gensym-hook
                                                              local-eval-hook
                                                              top-level-eval-hook
                                                              fx<
                                                              fx=
                                                              fx-
                                                              fx+
                                                              *mode*
                                                              noexpand)
                                                            ((top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top))
                                                            ("i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"))
                                                          #(ribcage
                                                            (define-structure
                                                              and-map*)
                                                            ((top) (top))
                                                            ("i" "i")))
                                                         (hygiene guile)))
                                                  'compile
                                                  (if (free-id=?137
                                                        x599
                                                        '#(syntax-object
                                                           load
                                                           ((top)
                                                            #(ribcage () () ())
                                                            #(ribcage () () ())
                                                            #(ribcage () () ())
                                                            #(ribcage
                                                              #(x)
                                                              #((top))
                                                              #("i"))
                                                            #(ribcage () () ())
                                                            #(ribcage
                                                              #(f
                                                                when-list
                                                                situations)
                                                              #((top)
                                                                (top)
                                                                (top))
                                                              #("i" "i" "i"))
                                                            #(ribcage () () ())
                                                            #(ribcage
                                                              #(e when-list w)
                                                              #((top)
                                                                (top)
                                                                (top))
                                                              #("i" "i" "i"))
                                                            #(ribcage
                                                              (lambda-var-list
                                                                gen-var
                                                                strip
                                                                ellipsis?
                                                                chi-void
                                                                eval-local-transformer
                                                                chi-local-syntax
                                                                chi-lambda-clause
                                                                chi-body
                                                                chi-macro
                                                                chi-application
                                                                chi-expr
                                                                chi
                                                                chi-top
                                                                syntax-type
                                                                chi-when-list
                                                                chi-install-global
                                                                chi-top-sequence
                                                                chi-sequence
                                                                source-wrap
                                                                wrap
                                                                bound-id-member?
                                                                distinct-bound-ids?
                                                                valid-bound-ids?
                                                                bound-id=?
                                                                free-id=?
                                                                id-var-name
                                                                same-marks?
                                                                join-marks
                                                                join-wraps
                                                                smart-append
                                                                make-binding-wrap
                                                                extend-ribcage!
                                                                make-empty-ribcage
                                                                new-mark
                                                                anti-mark
                                                                the-anti-mark
                                                                top-marked?
                                                                top-wrap
                                                                empty-wrap
                                                                set-ribcage-labels!
                                                                set-ribcage-marks!
                                                                set-ribcage-symnames!
                                                                ribcage-labels
                                                                ribcage-marks
                                                                ribcage-symnames
                                                                ribcage?
                                                                make-ribcage
                                                                gen-labels
                                                                gen-label
                                                                make-rename
                                                                rename-marks
                                                                rename-new
                                                                rename-old
                                                                subst-rename?
                                                                wrap-subst
                                                                wrap-marks
                                                                make-wrap
                                                                id-sym-name&marks
                                                                id-sym-name
                                                                id?
                                                                nonsymbol-id?
                                                                global-extend
                                                                lookup
                                                                macros-only-env
                                                                extend-var-env
                                                                extend-env
                                                                null-env
                                                                binding-value
                                                                binding-type
                                                                make-binding
                                                                arg-check
                                                                source-annotation
                                                                no-source
                                                                set-syntax-object-module!
                                                                set-syntax-object-wrap!
                                                                set-syntax-object-expression!
                                                                syntax-object-module
                                                                syntax-object-wrap
                                                                syntax-object-expression
                                                                syntax-object?
                                                                make-syntax-object
                                                                build-lexical-var
                                                                build-letrec
                                                                build-named-let
                                                                build-let
                                                                build-sequence
                                                                build-data
                                                                build-primref
                                                                build-lambda
                                                                build-global-definition
                                                                maybe-name-value!
                                                                build-global-assignment
                                                                build-global-reference
                                                                analyze-variable
                                                                build-lexical-assignment
                                                                build-lexical-reference
                                                                build-conditional
                                                                build-application
                                                                build-void
                                                                get-global-definition-hook
                                                                put-global-definition-hook
                                                                gensym-hook
                                                                local-eval-hook
                                                                top-level-eval-hook
                                                                fx<
                                                                fx=
                                                                fx-
                                                                fx+
                                                                *mode*
                                                                noexpand)
                                                              ((top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top)
                                                               (top))
                                                              ("i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"
                                                               "i"))
                                                            #(ribcage
                                                              (define-structure
                                                                and-map*)
                                                              ((top) (top))
                                                              ("i" "i")))
                                                           (hygiene guile)))
                                                    'load
                                                    (if (free-id=?137
                                                          x599
                                                          '#(syntax-object
                                                             eval
                                                             ((top)
                                                              #(ribcage
                                                                ()
                                                                ()
                                                                ())
                                                              #(ribcage
                                                                ()
                                                                ()
                                                                ())
                                                              #(ribcage
                                                                ()
                                                                ()
                                                                ())
                                                              #(ribcage
                                                                #(x)
                                                                #((top))
                                                                #("i"))
                                                              #(ribcage
                                                                ()
                                                                ()
                                                                ())
                                                              #(ribcage
                                                                #(f
                                                                  when-list
                                                                  situations)
                                                                #((top)
                                                                  (top)
                                                                  (top))
                                                                #("i" "i" "i"))
                                                              #(ribcage
                                                                ()
                                                                ()
                                                                ())
                                                              #(ribcage
                                                                #(e
                                                                  when-list
                                                                  w)
                                                                #((top)
                                                                  (top)
                                                                  (top))
                                                                #("i" "i" "i"))
                                                              #(ribcage
                                                                (lambda-var-list
                                                                  gen-var
                                                                  strip
                                                                  ellipsis?
                                                                  chi-void
                                                                  eval-local-transformer
                                                                  chi-local-syntax
                                                                  chi-lambda-clause
                                                                  chi-body
                                                                  chi-macro
                                                                  chi-application
                                                                  chi-expr
                                                                  chi
                                                                  chi-top
                                                                  syntax-type
                                                                  chi-when-list
                                                                  chi-install-global
                                                                  chi-top-sequence
                                                                  chi-sequence
                                                                  source-wrap
                                                                  wrap
                                                                  bound-id-member?
                                                                  distinct-bound-ids?
                                                                  valid-bound-ids?
                                                                  bound-id=?
                                                                  free-id=?
                                                                  id-var-name
                                                                  same-marks?
                                                                  join-marks
                                                                  join-wraps
                                                                  smart-append
                                                                  make-binding-wrap
                                                                  extend-ribcage!
                                                                  make-empty-ribcage
                                                                  new-mark
                                                                  anti-mark
                                                                  the-anti-mark
                                                                  top-marked?
                                                                  top-wrap
                                                                  empty-wrap
                                                                  set-ribcage-labels!
                                                                  set-ribcage-marks!
                                                                  set-ribcage-symnames!
                                                                  ribcage-labels
                                                                  ribcage-marks
                                                                  ribcage-symnames
                                                                  ribcage?
                                                                  make-ribcage
                                                                  gen-labels
                                                                  gen-label
                                                                  make-rename
                                                                  rename-marks
                                                                  rename-new
                                                                  rename-old
                                                                  subst-rename?
                                                                  wrap-subst
                                                                  wrap-marks
                                                                  make-wrap
                                                                  id-sym-name&marks
                                                                  id-sym-name
                                                                  id?
                                                                  nonsymbol-id?
                                                                  global-extend
                                                                  lookup
                                                                  macros-only-env
                                                                  extend-var-env
                                                                  extend-env
                                                                  null-env
                                                                  binding-value
                                                                  binding-type
                                                                  make-binding
                                                                  arg-check
                                                                  source-annotation
                                                                  no-source
                                                                  set-syntax-object-module!
                                                                  set-syntax-object-wrap!
                                                                  set-syntax-object-expression!
                                                                  syntax-object-module
                                                                  syntax-object-wrap
                                                                  syntax-object-expression
                                                                  syntax-object?
                                                                  make-syntax-object
                                                                  build-lexical-var
                                                                  build-letrec
                                                                  build-named-let
                                                                  build-let
                                                                  build-sequence
                                                                  build-data
                                                                  build-primref
                                                                  build-lambda
                                                                  build-global-definition
                                                                  maybe-name-value!
                                                                  build-global-assignment
                                                                  build-global-reference
                                                                  analyze-variable
                                                                  build-lexical-assignment
                                                                  build-lexical-reference
                                                                  build-conditional
                                                                  build-application
                                                                  build-void
                                                                  get-global-definition-hook
                                                                  put-global-definition-hook
                                                                  gensym-hook
                                                                  local-eval-hook
                                                                  top-level-eval-hook
                                                                  fx<
                                                                  fx=
                                                                  fx-
                                                                  fx+
                                                                  *mode*
                                                                  noexpand)
                                                                ((top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top)
                                                                 (top))
                                                                ("i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"
                                                                 "i"))
                                                              #(ribcage
                                                                (define-structure
                                                                  and-map*)
                                                                ((top) (top))
                                                                ("i" "i")))
                                                             (hygiene guile)))
                                                      'eval
                                                      (syntax-violation
                                                        'eval-when
                                                        "invalid situation"
                                                        e593
                                                        (wrap142
                                                          x599
                                                          w595
                                                          #f))))))
                                              situations598))))))
                 (f596 when-list594 (quote ())))))
           (chi-install-global146
             (lambda (name600 e601)
               (build-global-definition89
                 #f
                 name600
                 (if (let ((v602 (module-variable (current-module) name600)))
                       (if v602
                         (if (variable-bound? v602)
                           (if (macro? (variable-ref v602))
                             (not (eq? (macro-type (variable-ref v602))
                                       'syncase-macro))
                             #f)
                           #f)
                         #f))
                   (build-application81
                     #f
                     (build-primref91
                       #f
                       'make-extended-syncase-macro)
                     (list (build-application81
                             #f
                             (build-primref91 #f (quote module-ref))
                             (list (build-application81
                                     #f
                                     (build-primref91
                                       #f
                                       'current-module)
                                     '())
                                   (build-data92 #f name600)))
                           (build-data92 #f (quote macro))
                           e601))
                   (build-application81
                     #f
                     (build-primref91 #f (quote make-syncase-macro))
                     (list (build-data92 #f (quote macro)) e601))))))
           (chi-top-sequence145
             (lambda (body603 r604 w605 s606 m607 esew608 mod609)
               (build-sequence93
                 s606
                 (letrec ((dobody610
                            (lambda (body611 r612 w613 m614 esew615 mod616)
                              (if (null? body611)
                                '()
                                (let ((first617
                                        (chi-top149
                                          (car body611)
                                          r612
                                          w613
                                          m614
                                          esew615
                                          mod616)))
                                  (cons first617
                                        (dobody610
                                          (cdr body611)
                                          r612
                                          w613
                                          m614
                                          esew615
                                          mod616)))))))
                   (dobody610 body603 r604 w605 m607 esew608 mod609)))))
           (chi-sequence144
             (lambda (body618 r619 w620 s621 mod622)
               (build-sequence93
                 s621
                 (letrec ((dobody623
                            (lambda (body624 r625 w626 mod627)
                              (if (null? body624)
                                '()
                                (let ((first628
                                        (chi150
                                          (car body624)
                                          r625
                                          w626
                                          mod627)))
                                  (cons first628
                                        (dobody623
                                          (cdr body624)
                                          r625
                                          w626
                                          mod627)))))))
                   (dobody623 body618 r619 w620 mod622)))))
           (source-wrap143
             (lambda (x629 w630 s631 defmod632)
               (begin
                 (if (if s631 (pair? x629) #f)
                   (set-source-properties! x629 s631))
                 (wrap142 x629 w630 defmod632))))
           (wrap142
             (lambda (x633 w634 defmod635)
               (if (if (null? (wrap-marks117 w634))
                     (null? (wrap-subst118 w634))
                     #f)
                 x633
                 (if (syntax-object?98 x633)
                   (make-syntax-object97
                     (syntax-object-expression99 x633)
                     (join-wraps133 w634 (syntax-object-wrap100 x633))
                     (syntax-object-module101 x633))
                   (if (null? x633)
                     x633
                     (make-syntax-object97 x633 w634 defmod635))))))
           (bound-id-member?141
             (lambda (x636 list637)
               (if (not (null? list637))
                 (let ((t638 (bound-id=?138 x636 (car list637))))
                   (if t638
                     t638
                     (bound-id-member?141 x636 (cdr list637))))
                 #f)))
           (distinct-bound-ids?140
             (lambda (ids639)
               (letrec ((distinct?640
                          (lambda (ids641)
                            (let ((t642 (null? ids641)))
                              (if t642
                                t642
                                (if (not (bound-id-member?141
                                           (car ids641)
                                           (cdr ids641)))
                                  (distinct?640 (cdr ids641))
                                  #f))))))
                 (distinct?640 ids639))))
           (valid-bound-ids?139
             (lambda (ids643)
               (if (letrec ((all-ids?644
                              (lambda (ids645)
                                (let ((t646 (null? ids645)))
                                  (if t646
                                    t646
                                    (if (id?114 (car ids645))
                                      (all-ids?644 (cdr ids645))
                                      #f))))))
                     (all-ids?644 ids643))
                 (distinct-bound-ids?140 ids643)
                 #f)))
           (bound-id=?138
             (lambda (i647 j648)
               (if (if (syntax-object?98 i647)
                     (syntax-object?98 j648)
                     #f)
                 (if (eq? (syntax-object-expression99 i647)
                          (syntax-object-expression99 j648))
                   (same-marks?135
                     (wrap-marks117 (syntax-object-wrap100 i647))
                     (wrap-marks117 (syntax-object-wrap100 j648)))
                   #f)
                 (eq? i647 j648))))
           (free-id=?137
             (lambda (i649 j650)
               (if (eq? (let ((x651 i649))
                          (if (syntax-object?98 x651)
                            (syntax-object-expression99 x651)
                            x651))
                        (let ((x652 j650))
                          (if (syntax-object?98 x652)
                            (syntax-object-expression99 x652)
                            x652)))
                 (eq? (id-var-name136 i649 (quote (())))
                      (id-var-name136 j650 (quote (()))))
                 #f)))
           (id-var-name136
             (lambda (id653 w654)
               (letrec ((search-vector-rib657
                          (lambda (sym663
                                   subst664
                                   marks665
                                   symnames666
                                   ribcage667)
                            (let ((n668 (vector-length symnames666)))
                              (letrec ((f669 (lambda (i670)
                                               (if (fx=74 i670 n668)
                                                 (search655
                                                   sym663
                                                   (cdr subst664)
                                                   marks665)
                                                 (if (if (eq? (vector-ref
                                                                symnames666
                                                                i670)
                                                              sym663)
                                                       (same-marks?135
                                                         marks665
                                                         (vector-ref
                                                           (ribcage-marks124
                                                             ribcage667)
                                                           i670))
                                                       #f)
                                                   (values
                                                     (vector-ref
                                                       (ribcage-labels125
                                                         ribcage667)
                                                       i670)
                                                     marks665)
                                                   (f669 (fx+72 i670 1)))))))
                                (f669 0)))))
                        (search-list-rib656
                          (lambda (sym671
                                   subst672
                                   marks673
                                   symnames674
                                   ribcage675)
                            (letrec ((f676 (lambda (symnames677 i678)
                                             (if (null? symnames677)
                                               (search655
                                                 sym671
                                                 (cdr subst672)
                                                 marks673)
                                               (if (if (eq? (car symnames677)
                                                            sym671)
                                                     (same-marks?135
                                                       marks673
                                                       (list-ref
                                                         (ribcage-marks124
                                                           ribcage675)
                                                         i678))
                                                     #f)
                                                 (values
                                                   (list-ref
                                                     (ribcage-labels125
                                                       ribcage675)
                                                     i678)
                                                   marks673)
                                                 (f676 (cdr symnames677)
                                                       (fx+72 i678 1)))))))
                              (f676 symnames674 0))))
                        (search655
                          (lambda (sym679 subst680 marks681)
                            (if (null? subst680)
                              (values #f marks681)
                              (let ((fst682 (car subst680)))
                                (if (eq? fst682 (quote shift))
                                  (search655
                                    sym679
                                    (cdr subst680)
                                    (cdr marks681))
                                  (let ((symnames683
                                          (ribcage-symnames123 fst682)))
                                    (if (vector? symnames683)
                                      (search-vector-rib657
                                        sym679
                                        subst680
                                        marks681
                                        symnames683
                                        fst682)
                                      (search-list-rib656
                                        sym679
                                        subst680
                                        marks681
                                        symnames683
                                        fst682)))))))))
                 (if (symbol? id653)
                   (let ((t684 (call-with-values
                                 (lambda ()
                                   (search655
                                     id653
                                     (wrap-subst118 w654)
                                     (wrap-marks117 w654)))
                                 (lambda (x686 . ignore685) x686))))
                     (if t684 t684 id653))
                   (if (syntax-object?98 id653)
                     (let ((id687 (syntax-object-expression99 id653))
                           (w1688 (syntax-object-wrap100 id653)))
                       (let ((marks689
                               (join-marks134
                                 (wrap-marks117 w654)
                                 (wrap-marks117 w1688))))
                         (call-with-values
                           (lambda ()
                             (search655 id687 (wrap-subst118 w654) marks689))
                           (lambda (new-id690 marks691)
                             (let ((t692 new-id690))
                               (if t692
                                 t692
                                 (let ((t693 (call-with-values
                                               (lambda ()
                                                 (search655
                                                   id687
                                                   (wrap-subst118 w1688)
                                                   marks691))
                                               (lambda (x695 . ignore694)
                                                 x695))))
                                   (if t693 t693 id687))))))))
                     (syntax-violation
                       'id-var-name
                       "invalid id"
                       id653))))))
           (same-marks?135
             (lambda (x696 y697)
               (let ((t698 (eq? x696 y697)))
                 (if t698
                   t698
                   (if (not (null? x696))
                     (if (not (null? y697))
                       (if (eq? (car x696) (car y697))
                         (same-marks?135 (cdr x696) (cdr y697))
                         #f)
                       #f)
                     #f)))))
           (join-marks134
             (lambda (m1699 m2700)
               (smart-append132 m1699 m2700)))
           (join-wraps133
             (lambda (w1701 w2702)
               (let ((m1703 (wrap-marks117 w1701))
                     (s1704 (wrap-subst118 w1701)))
                 (if (null? m1703)
                   (if (null? s1704)
                     w2702
                     (make-wrap116
                       (wrap-marks117 w2702)
                       (smart-append132 s1704 (wrap-subst118 w2702))))
                   (make-wrap116
                     (smart-append132 m1703 (wrap-marks117 w2702))
                     (smart-append132 s1704 (wrap-subst118 w2702)))))))
           (smart-append132
             (lambda (m1705 m2706)
               (if (null? m2706) m1705 (append m1705 m2706))))
           (make-binding-wrap131
             (lambda (ids707 labels708 w709)
               (if (null? ids707)
                 w709
                 (make-wrap116
                   (wrap-marks117 w709)
                   (cons (let ((labelvec710 (list->vector labels708)))
                           (let ((n711 (vector-length labelvec710)))
                             (let ((symnamevec712 (make-vector n711))
                                   (marksvec713 (make-vector n711)))
                               (begin
                                 (letrec ((f714 (lambda (ids715 i716)
                                                  (if (not (null? ids715))
                                                    (call-with-values
                                                      (lambda ()
                                                        (id-sym-name&marks115
                                                          (car ids715)
                                                          w709))
                                                      (lambda (symname717
                                                               marks718)
                                                        (begin
                                                          (vector-set!
                                                            symnamevec712
                                                            i716
                                                            symname717)
                                                          (vector-set!
                                                            marksvec713
                                                            i716
                                                            marks718)
                                                          (f714 (cdr ids715)
                                                                (fx+72 i716
                                                                       1)))))))))
                                   (f714 ids707 0))
                                 (make-ribcage121
                                   symnamevec712
                                   marksvec713
                                   labelvec710)))))
                         (wrap-subst118 w709))))))
           (extend-ribcage!130
             (lambda (ribcage719 id720 label721)
               (begin
                 (set-ribcage-symnames!126
                   ribcage719
                   (cons (syntax-object-expression99 id720)
                         (ribcage-symnames123 ribcage719)))
                 (set-ribcage-marks!127
                   ribcage719
                   (cons (wrap-marks117 (syntax-object-wrap100 id720))
                         (ribcage-marks124 ribcage719)))
                 (set-ribcage-labels!128
                   ribcage719
                   (cons label721 (ribcage-labels125 ribcage719))))))
           (anti-mark129
             (lambda (w722)
               (make-wrap116
                 (cons #f (wrap-marks117 w722))
                 (cons (quote shift) (wrap-subst118 w722)))))
           (set-ribcage-labels!128
             (lambda (x723 update724)
               (vector-set! x723 3 update724)))
           (set-ribcage-marks!127
             (lambda (x725 update726)
               (vector-set! x725 2 update726)))
           (set-ribcage-symnames!126
             (lambda (x727 update728)
               (vector-set! x727 1 update728)))
           (ribcage-labels125
             (lambda (x729) (vector-ref x729 3)))
           (ribcage-marks124
             (lambda (x730) (vector-ref x730 2)))
           (ribcage-symnames123
             (lambda (x731) (vector-ref x731 1)))
           (ribcage?122
             (lambda (x732)
               (if (vector? x732)
                 (if (= (vector-length x732) 4)
                   (eq? (vector-ref x732 0) (quote ribcage))
                   #f)
                 #f)))
           (make-ribcage121
             (lambda (symnames733 marks734 labels735)
               (vector
                 'ribcage
                 symnames733
                 marks734
                 labels735)))
           (gen-labels120
             (lambda (ls736)
               (if (null? ls736)
                 '()
                 (cons (gen-label119) (gen-labels120 (cdr ls736))))))
           (gen-label119 (lambda () (string #\i)))
           (wrap-subst118 cdr)
           (wrap-marks117 car)
           (make-wrap116 cons)
           (id-sym-name&marks115
             (lambda (x737 w738)
               (if (syntax-object?98 x737)
                 (values
                   (syntax-object-expression99 x737)
                   (join-marks134
                     (wrap-marks117 w738)
                     (wrap-marks117 (syntax-object-wrap100 x737))))
                 (values x737 (wrap-marks117 w738)))))
           (id?114
             (lambda (x739)
               (if (symbol? x739)
                 #t
                 (if (syntax-object?98 x739)
                   (symbol? (syntax-object-expression99 x739))
                   #f))))
           (nonsymbol-id?113
             (lambda (x740)
               (if (syntax-object?98 x740)
                 (symbol? (syntax-object-expression99 x740))
                 #f)))
           (global-extend112
             (lambda (type741 sym742 val743)
               (put-global-definition-hook78
                 sym742
                 type741
                 val743)))
           (lookup111
             (lambda (x744 r745 mod746)
               (let ((t747 (assq x744 r745)))
                 (if t747
                   (cdr t747)
                   (if (symbol? x744)
                     (let ((t748 (get-global-definition-hook79 x744 mod746)))
                       (if t748 t748 (quote (global))))
                     '(displaced-lexical))))))
           (macros-only-env110
             (lambda (r749)
               (if (null? r749)
                 '()
                 (let ((a750 (car r749)))
                   (if (eq? (cadr a750) (quote macro))
                     (cons a750 (macros-only-env110 (cdr r749)))
                     (macros-only-env110 (cdr r749)))))))
           (extend-var-env109
             (lambda (labels751 vars752 r753)
               (if (null? labels751)
                 r753
                 (extend-var-env109
                   (cdr labels751)
                   (cdr vars752)
                   (cons (cons (car labels751)
                               (cons (quote lexical) (car vars752)))
                         r753)))))
           (extend-env108
             (lambda (labels754 bindings755 r756)
               (if (null? labels754)
                 r756
                 (extend-env108
                   (cdr labels754)
                   (cdr bindings755)
                   (cons (cons (car labels754) (car bindings755))
                         r756)))))
           (binding-value107 cdr)
           (binding-type106 car)
           (source-annotation105
             (lambda (x757)
               (if (syntax-object?98 x757)
                 (source-annotation105
                   (syntax-object-expression99 x757))
                 (if (pair? x757)
                   (let ((props758 (source-properties x757)))
                     (if (pair? props758) props758 #f))
                   #f))))
           (set-syntax-object-module!104
             (lambda (x759 update760)
               (vector-set! x759 3 update760)))
           (set-syntax-object-wrap!103
             (lambda (x761 update762)
               (vector-set! x761 2 update762)))
           (set-syntax-object-expression!102
             (lambda (x763 update764)
               (vector-set! x763 1 update764)))
           (syntax-object-module101
             (lambda (x765) (vector-ref x765 3)))
           (syntax-object-wrap100
             (lambda (x766) (vector-ref x766 2)))
           (syntax-object-expression99
             (lambda (x767) (vector-ref x767 1)))
           (syntax-object?98
             (lambda (x768)
               (if (vector? x768)
                 (if (= (vector-length x768) 4)
                   (eq? (vector-ref x768 0) (quote syntax-object))
                   #f)
                 #f)))
           (make-syntax-object97
             (lambda (expression769 wrap770 module771)
               (vector
                 'syntax-object
                 expression769
                 wrap770
                 module771)))
           (build-letrec96
             (lambda (src772 ids773 vars774 val-exps775 body-exp776)
               (if (null? vars774)
                 body-exp776
                 (let ((atom-key777 (fluid-ref *mode*71)))
                   (if (memv atom-key777 (quote (c)))
                     (begin
                       (for-each maybe-name-value!88 ids773 val-exps775)
                       ((@ (language tree-il) make-letrec)
                        src772
                        ids773
                        vars774
                        val-exps775
                        body-exp776))
                     (list 'letrec
                           (map list vars774 val-exps775)
                           body-exp776))))))
           (build-named-let95
             (lambda (src778 ids779 vars780 val-exps781 body-exp782)
               (let ((f783 (car vars780))
                     (f-name784 (car ids779))
                     (vars785 (cdr vars780))
                     (ids786 (cdr ids779)))
                 (let ((atom-key787 (fluid-ref *mode*71)))
                   (if (memv atom-key787 (quote (c)))
                     (let ((proc788
                             (build-lambda90
                               src778
                               ids786
                               vars785
                               #f
                               body-exp782)))
                       (begin
                         (maybe-name-value!88 f-name784 proc788)
                         (for-each maybe-name-value!88 ids786 val-exps781)
                         ((@ (language tree-il) make-letrec)
                          src778
                          (list f-name784)
                          (list f783)
                          (list proc788)
                          (build-application81
                            src778
                            (build-lexical-reference83
                              'fun
                              src778
                              f-name784
                              f783)
                            val-exps781))))
                     (list 'let
                           f783
                           (map list vars785 val-exps781)
                           body-exp782))))))
           (build-let94
             (lambda (src789 ids790 vars791 val-exps792 body-exp793)
               (if (null? vars791)
                 body-exp793
                 (let ((atom-key794 (fluid-ref *mode*71)))
                   (if (memv atom-key794 (quote (c)))
                     (begin
                       (for-each maybe-name-value!88 ids790 val-exps792)
                       ((@ (language tree-il) make-let)
                        src789
                        ids790
                        vars791
                        val-exps792
                        body-exp793))
                     (list 'let
                           (map list vars791 val-exps792)
                           body-exp793))))))
           (build-sequence93
             (lambda (src795 exps796)
               (if (null? (cdr exps796))
                 (car exps796)
                 (let ((atom-key797 (fluid-ref *mode*71)))
                   (if (memv atom-key797 (quote (c)))
                     ((@ (language tree-il) make-sequence)
                      src795
                      exps796)
                     (cons (quote begin) exps796))))))
           (build-data92
             (lambda (src798 exp799)
               (let ((atom-key800 (fluid-ref *mode*71)))
                 (if (memv atom-key800 (quote (c)))
                   ((@ (language tree-il) make-const) src798 exp799)
                   (if (if (self-evaluating? exp799)
                         (not (vector? exp799))
                         #f)
                     exp799
                     (list (quote quote) exp799))))))
           (build-primref91
             (lambda (src801 name802)
               (if (equal?
                     (module-name (current-module))
                     '(guile))
                 (let ((atom-key803 (fluid-ref *mode*71)))
                   (if (memv atom-key803 (quote (c)))
                     ((@ (language tree-il) make-toplevel-ref)
                      src801
                      name802)
                     name802))
                 (let ((atom-key804 (fluid-ref *mode*71)))
                   (if (memv atom-key804 (quote (c)))
                     ((@ (language tree-il) make-module-ref)
                      src801
                      '(guile)
                      name802
                      #f)
                     (list (quote @@) (quote (guile)) name802))))))
           (build-lambda90
             (lambda (src805 ids806 vars807 docstring808 exp809)
               (let ((atom-key810 (fluid-ref *mode*71)))
                 (if (memv atom-key810 (quote (c)))
                   ((@ (language tree-il) make-lambda)
                    src805
                    ids806
                    vars807
                    (if docstring808
                      (list (cons (quote documentation) docstring808))
                      '())
                    exp809)
                   (cons 'lambda
                         (cons vars807
                               (append
                                 (if docstring808
                                   (list docstring808)
                                   '())
                                 (list exp809))))))))
           (build-global-definition89
             (lambda (source811 var812 exp813)
               (let ((atom-key814 (fluid-ref *mode*71)))
                 (if (memv atom-key814 (quote (c)))
                   (begin
                     (maybe-name-value!88 var812 exp813)
                     ((@ (language tree-il) make-toplevel-define)
                      source811
                      var812
                      exp813))
                   (list (quote define) var812 exp813)))))
           (maybe-name-value!88
             (lambda (name815 val816)
               (if ((@ (language tree-il) lambda?) val816)
                 (let ((meta817
                         ((@ (language tree-il) lambda-meta) val816)))
                   (if (not (assq (quote name) meta817))
                     ((setter (@ (language tree-il) lambda-meta))
                      val816
                      (acons (quote name) name815 meta817)))))))
           (build-global-assignment87
             (lambda (source818 var819 exp820 mod821)
               (analyze-variable85
                 mod821
                 var819
                 (lambda (mod822 var823 public?824)
                   (let ((atom-key825 (fluid-ref *mode*71)))
                     (if (memv atom-key825 (quote (c)))
                       ((@ (language tree-il) make-module-set)
                        source818
                        mod822
                        var823
                        public?824
                        exp820)
                       (list 'set!
                             (list (if public?824 (quote @) (quote @@))
                                   mod822
                                   var823)
                             exp820))))
                 (lambda (var826)
                   (let ((atom-key827 (fluid-ref *mode*71)))
                     (if (memv atom-key827 (quote (c)))
                       ((@ (language tree-il) make-toplevel-set)
                        source818
                        var826
                        exp820)
                       (list (quote set!) var826 exp820)))))))
           (build-global-reference86
             (lambda (source828 var829 mod830)
               (analyze-variable85
                 mod830
                 var829
                 (lambda (mod831 var832 public?833)
                   (let ((atom-key834 (fluid-ref *mode*71)))
                     (if (memv atom-key834 (quote (c)))
                       ((@ (language tree-il) make-module-ref)
                        source828
                        mod831
                        var832
                        public?833)
                       (list (if public?833 (quote @) (quote @@))
                             mod831
                             var832))))
                 (lambda (var835)
                   (let ((atom-key836 (fluid-ref *mode*71)))
                     (if (memv atom-key836 (quote (c)))
                       ((@ (language tree-il) make-toplevel-ref)
                        source828
                        var835)
                       var835))))))
           (analyze-variable85
             (lambda (mod837 var838 modref-cont839 bare-cont840)
               (if (not mod837)
                 (bare-cont840 var838)
                 (let ((kind841 (car mod837)) (mod842 (cdr mod837)))
                   (if (memv kind841 (quote (public)))
                     (modref-cont839 mod842 var838 #t)
                     (if (memv kind841 (quote (private)))
                       (if (not (equal? mod842 (module-name (current-module))))
                         (modref-cont839 mod842 var838 #f)
                         (bare-cont840 var838))
                       (if (memv kind841 (quote (bare)))
                         (bare-cont840 var838)
                         (if (memv kind841 (quote (hygiene)))
                           (if (if (not (equal?
                                          mod842
                                          (module-name (current-module))))
                                 (module-variable
                                   (resolve-module mod842)
                                   var838)
                                 #f)
                             (modref-cont839 mod842 var838 #f)
                             (bare-cont840 var838))
                           (syntax-violation
                             #f
                             "bad module kind"
                             var838
                             mod842)))))))))
           (build-lexical-assignment84
             (lambda (source843 name844 var845 exp846)
               (let ((atom-key847 (fluid-ref *mode*71)))
                 (if (memv atom-key847 (quote (c)))
                   ((@ (language tree-il) make-lexical-set)
                    source843
                    name844
                    var845
                    exp846)
                   (list (quote set!) var845 exp846)))))
           (build-lexical-reference83
             (lambda (type848 source849 name850 var851)
               (let ((atom-key852 (fluid-ref *mode*71)))
                 (if (memv atom-key852 (quote (c)))
                   ((@ (language tree-il) make-lexical-ref)
                    source849
                    name850
                    var851)
                   var851))))
           (build-conditional82
             (lambda (source853 test-exp854 then-exp855 else-exp856)
               (let ((atom-key857 (fluid-ref *mode*71)))
                 (if (memv atom-key857 (quote (c)))
                   ((@ (language tree-il) make-conditional)
                    source853
                    test-exp854
                    then-exp855
                    else-exp856)
                   (if (equal? else-exp856 (quote (if #f #f)))
                     (list (quote if) test-exp854 then-exp855)
                     (list 'if
                           test-exp854
                           then-exp855
                           else-exp856))))))
           (build-application81
             (lambda (source858 fun-exp859 arg-exps860)
               (let ((atom-key861 (fluid-ref *mode*71)))
                 (if (memv atom-key861 (quote (c)))
                   ((@ (language tree-il) make-application)
                    source858
                    fun-exp859
                    arg-exps860)
                   (cons fun-exp859 arg-exps860)))))
           (build-void80
             (lambda (source862)
               (let ((atom-key863 (fluid-ref *mode*71)))
                 (if (memv atom-key863 (quote (c)))
                   ((@ (language tree-il) make-void) source862)
                   '(if #f #f)))))
           (get-global-definition-hook79
             (lambda (symbol864 module865)
               (begin
                 (if (if (not module865) (current-module) #f)
                   (warn "module system is booted, we should have a module"
                         symbol864))
                 (let ((v866 (module-variable
                               (if module865
                                 (resolve-module (cdr module865))
                                 (current-module))
                               symbol864)))
                   (if v866
                     (if (variable-bound? v866)
                       (let ((val867 (variable-ref v866)))
                         (if (macro? val867)
                           (if (syncase-macro-type val867)
                             (cons (syncase-macro-type val867)
                                   (syncase-macro-binding val867))
                             #f)
                           #f))
                       #f)
                     #f)))))
           (put-global-definition-hook78
             (lambda (symbol868 type869 val870)
               (let ((existing871
                       (let ((v872 (module-variable
                                     (current-module)
                                     symbol868)))
                         (if v872
                           (if (variable-bound? v872)
                             (let ((val873 (variable-ref v872)))
                               (if (macro? val873)
                                 (if (not (syncase-macro-type val873))
                                   val873
                                   #f)
                                 #f))
                             #f)
                           #f))))
                 (module-define!
                   (current-module)
                   symbol868
                   (if existing871
                     (make-extended-syncase-macro
                       existing871
                       type869
                       val870)
                     (make-syncase-macro type869 val870))))))
           (local-eval-hook77
             (lambda (x874 mod875)
               (primitive-eval
                 (list noexpand70
                       (let ((atom-key876 (fluid-ref *mode*71)))
                         (if (memv atom-key876 (quote (c)))
                           ((@ (language tree-il) tree-il->scheme) x874)
                           x874))))))
           (top-level-eval-hook76
             (lambda (x877 mod878)
               (primitive-eval
                 (list noexpand70
                       (let ((atom-key879 (fluid-ref *mode*71)))
                         (if (memv atom-key879 (quote (c)))
                           ((@ (language tree-il) tree-il->scheme) x877)
                           x877))))))
           (fx<75 <)
           (fx=74 =)
           (fx-73 -)
           (fx+72 +)
           (*mode*71 (make-fluid))
           (noexpand70 "noexpand"))
    (begin
      (global-extend112
        'local-syntax
        'letrec-syntax
        #t)
      (global-extend112
        'local-syntax
        'let-syntax
        #f)
      (global-extend112
        'core
        'fluid-let-syntax
        (lambda (e880 r881 w882 s883 mod884)
          ((lambda (tmp885)
             ((lambda (tmp886)
                (if (if tmp886
                      (apply (lambda (_887 var888 val889 e1890 e2891)
                               (valid-bound-ids?139 var888))
                             tmp886)
                      #f)
                  (apply (lambda (_893 var894 val895 e1896 e2897)
                           (let ((names898
                                   (map (lambda (x899)
                                          (id-var-name136 x899 w882))
                                        var894)))
                             (begin
                               (for-each
                                 (lambda (id901 n902)
                                   (let ((atom-key903
                                           (binding-type106
                                             (lookup111 n902 r881 mod884))))
                                     (if (memv atom-key903
                                               '(displaced-lexical))
                                       (syntax-violation
                                         'fluid-let-syntax
                                         "identifier out of context"
                                         e880
                                         (source-wrap143
                                           id901
                                           w882
                                           s883
                                           mod884)))))
                                 var894
                                 names898)
                               (chi-body154
                                 (cons e1896 e2897)
                                 (source-wrap143 e880 w882 s883 mod884)
                                 (extend-env108
                                   names898
                                   (let ((trans-r906
                                           (macros-only-env110 r881)))
                                     (map (lambda (x907)
                                            (cons 'macro
                                                  (eval-local-transformer157
                                                    (chi150
                                                      x907
                                                      trans-r906
                                                      w882
                                                      mod884)
                                                    mod884)))
                                          val895))
                                   r881)
                                 w882
                                 mod884))))
                         tmp886)
                  ((lambda (_909)
                     (syntax-violation
                       'fluid-let-syntax
                       "bad syntax"
                       (source-wrap143 e880 w882 s883 mod884)))
                   tmp885)))
              ($sc-dispatch
                tmp885
                '(any #(each (any any)) any . each-any))))
           e880)))
      (global-extend112
        'core
        'quote
        (lambda (e910 r911 w912 s913 mod914)
          ((lambda (tmp915)
             ((lambda (tmp916)
                (if tmp916
                  (apply (lambda (_917 e918)
                           (build-data92 s913 (strip160 e918 w912)))
                         tmp916)
                  ((lambda (_919)
                     (syntax-violation
                       'quote
                       "bad syntax"
                       (source-wrap143 e910 w912 s913 mod914)))
                   tmp915)))
              ($sc-dispatch tmp915 (quote (any any)))))
           e910)))
      (global-extend112
        'core
        'syntax
        (letrec ((regen927
                   (lambda (x928)
                     (let ((atom-key929 (car x928)))
                       (if (memv atom-key929 (quote (ref)))
                         (build-lexical-reference83
                           'value
                           #f
                           (cadr x928)
                           (cadr x928))
                         (if (memv atom-key929 (quote (primitive)))
                           (build-primref91 #f (cadr x928))
                           (if (memv atom-key929 (quote (quote)))
                             (build-data92 #f (cadr x928))
                             (if (memv atom-key929 (quote (lambda)))
                               (build-lambda90
                                 #f
                                 (cadr x928)
                                 (cadr x928)
                                 #f
                                 (regen927 (caddr x928)))
                               (build-application81
                                 #f
                                 (build-primref91 #f (car x928))
                                 (map regen927 (cdr x928))))))))))
                 (gen-vector926
                   (lambda (x930)
                     (if (eq? (car x930) (quote list))
                       (cons (quote vector) (cdr x930))
                       (if (eq? (car x930) (quote quote))
                         (list (quote quote) (list->vector (cadr x930)))
                         (list (quote list->vector) x930)))))
                 (gen-append925
                   (lambda (x931 y932)
                     (if (equal? y932 (quote (quote ())))
                       x931
                       (list (quote append) x931 y932))))
                 (gen-cons924
                   (lambda (x933 y934)
                     (let ((atom-key935 (car y934)))
                       (if (memv atom-key935 (quote (quote)))
                         (if (eq? (car x933) (quote quote))
                           (list 'quote
                                 (cons (cadr x933) (cadr y934)))
                           (if (eq? (cadr y934) (quote ()))
                             (list (quote list) x933)
                             (list (quote cons) x933 y934)))
                         (if (memv atom-key935 (quote (list)))
                           (cons (quote list) (cons x933 (cdr y934)))
                           (list (quote cons) x933 y934))))))
                 (gen-map923
                   (lambda (e936 map-env937)
                     (let ((formals938 (map cdr map-env937))
                           (actuals939
                             (map (lambda (x940) (list (quote ref) (car x940)))
                                  map-env937)))
                       (if (eq? (car e936) (quote ref))
                         (car actuals939)
                         (if (and-map
                               (lambda (x941)
                                 (if (eq? (car x941) (quote ref))
                                   (memq (cadr x941) formals938)
                                   #f))
                               (cdr e936))
                           (cons 'map
                                 (cons (list (quote primitive) (car e936))
                                       (map (let ((r942 (map cons
                                                             formals938
                                                             actuals939)))
                                              (lambda (x943)
                                                (cdr (assq (cadr x943) r942))))
                                            (cdr e936))))
                           (cons 'map
                                 (cons (list (quote lambda) formals938 e936)
                                       actuals939)))))))
                 (gen-mappend922
                   (lambda (e944 map-env945)
                     (list 'apply
                           '(primitive append)
                           (gen-map923 e944 map-env945))))
                 (gen-ref921
                   (lambda (src946 var947 level948 maps949)
                     (if (fx=74 level948 0)
                       (values var947 maps949)
                       (if (null? maps949)
                         (syntax-violation
                           'syntax
                           "missing ellipsis"
                           src946)
                         (call-with-values
                           (lambda ()
                             (gen-ref921
                               src946
                               var947
                               (fx-73 level948 1)
                               (cdr maps949)))
                           (lambda (outer-var950 outer-maps951)
                             (let ((b952 (assq outer-var950 (car maps949))))
                               (if b952
                                 (values (cdr b952) maps949)
                                 (let ((inner-var953 (gen-var161 (quote tmp))))
                                   (values
                                     inner-var953
                                     (cons (cons (cons outer-var950
                                                       inner-var953)
                                                 (car maps949))
                                           outer-maps951)))))))))))
                 (gen-syntax920
                   (lambda (src954 e955 r956 maps957 ellipsis?958 mod959)
                     (if (id?114 e955)
                       (let ((label960 (id-var-name136 e955 (quote (())))))
                         (let ((b961 (lookup111 label960 r956 mod959)))
                           (if (eq? (binding-type106 b961) (quote syntax))
                             (call-with-values
                               (lambda ()
                                 (let ((var.lev962 (binding-value107 b961)))
                                   (gen-ref921
                                     src954
                                     (car var.lev962)
                                     (cdr var.lev962)
                                     maps957)))
                               (lambda (var963 maps964)
                                 (values (list (quote ref) var963) maps964)))
                             (if (ellipsis?958 e955)
                               (syntax-violation
                                 'syntax
                                 "misplaced ellipsis"
                                 src954)
                               (values (list (quote quote) e955) maps957)))))
                       ((lambda (tmp965)
                          ((lambda (tmp966)
                             (if (if tmp966
                                   (apply (lambda (dots967 e968)
                                            (ellipsis?958 dots967))
                                          tmp966)
                                   #f)
                               (apply (lambda (dots969 e970)
                                        (gen-syntax920
                                          src954
                                          e970
                                          r956
                                          maps957
                                          (lambda (x971) #f)
                                          mod959))
                                      tmp966)
                               ((lambda (tmp972)
                                  (if (if tmp972
                                        (apply (lambda (x973 dots974 y975)
                                                 (ellipsis?958 dots974))
                                               tmp972)
                                        #f)
                                    (apply (lambda (x976 dots977 y978)
                                             (letrec ((f979 (lambda (y980 k981)
                                                              ((lambda (tmp985)
                                                                 ((lambda (tmp986)
                                                                    (if (if tmp986
                                                                          (apply (lambda (dots987
                                                                                          y988)
                                                                                   (ellipsis?958
                                                                                     dots987))
                                                                                 tmp986)
                                                                          #f)
                                                                      (apply (lambda (dots989
                                                                                      y990)
                                                                               (f979 y990
                                                                                     (lambda (maps991)
                                                                                       (call-with-values
                                                                                         (lambda ()
                                                                                           (k981 (cons '()
                                                                                                       maps991)))
                                                                                         (lambda (x992
                                                                                                  maps993)
                                                                                           (if (null? (car maps993))
                                                                                             (syntax-violation
                                                                                               'syntax
                                                                                               "extra ellipsis"
                                                                                               src954)
                                                                                             (values
                                                                                               (gen-mappend922
                                                                                                 x992
                                                                                                 (car maps993))
                                                                                               (cdr maps993))))))))
                                                                             tmp986)
                                                                      ((lambda (_994)
                                                                         (call-with-values
                                                                           (lambda ()
                                                                             (gen-syntax920
                                                                               src954
                                                                               y980
                                                                               r956
                                                                               maps957
                                                                               ellipsis?958
                                                                               mod959))
                                                                           (lambda (y995
                                                                                    maps996)
                                                                             (call-with-values
                                                                               (lambda ()
                                                                                 (k981 maps996))
                                                                               (lambda (x997
                                                                                        maps998)
                                                                                 (values
                                                                                   (gen-append925
                                                                                     x997
                                                                                     y995)
                                                                                   maps998))))))
                                                                       tmp985)))
                                                                  ($sc-dispatch
                                                                    tmp985
                                                                    '(any .
                                                                          any))))
                                                               y980))))
                                               (f979 y978
                                                     (lambda (maps982)
                                                       (call-with-values
                                                         (lambda ()
                                                           (gen-syntax920
                                                             src954
                                                             x976
                                                             r956
                                                             (cons '()
                                                                   maps982)
                                                             ellipsis?958
                                                             mod959))
                                                         (lambda (x983 maps984)
                                                           (if (null? (car maps984))
                                                             (syntax-violation
                                                               'syntax
                                                               "extra ellipsis"
                                                               src954)
                                                             (values
                                                               (gen-map923
                                                                 x983
                                                                 (car maps984))
                                                               (cdr maps984)))))))))
                                           tmp972)
                                    ((lambda (tmp999)
                                       (if tmp999
                                         (apply (lambda (x1000 y1001)
                                                  (call-with-values
                                                    (lambda ()
                                                      (gen-syntax920
                                                        src954
                                                        x1000
                                                        r956
                                                        maps957
                                                        ellipsis?958
                                                        mod959))
                                                    (lambda (x1002 maps1003)
                                                      (call-with-values
                                                        (lambda ()
                                                          (gen-syntax920
                                                            src954
                                                            y1001
                                                            r956
                                                            maps1003
                                                            ellipsis?958
                                                            mod959))
                                                        (lambda (y1004
                                                                 maps1005)
                                                          (values
                                                            (gen-cons924
                                                              x1002
                                                              y1004)
                                                            maps1005))))))
                                                tmp999)
                                         ((lambda (tmp1006)
                                            (if tmp1006
                                              (apply (lambda (e11007 e21008)
                                                       (call-with-values
                                                         (lambda ()
                                                           (gen-syntax920
                                                             src954
                                                             (cons e11007
                                                                   e21008)
                                                             r956
                                                             maps957
                                                             ellipsis?958
                                                             mod959))
                                                         (lambda (e1010
                                                                  maps1011)
                                                           (values
                                                             (gen-vector926
                                                               e1010)
                                                             maps1011))))
                                                     tmp1006)
                                              ((lambda (_1012)
                                                 (values
                                                   (list (quote quote) e955)
                                                   maps957))
                                               tmp965)))
                                          ($sc-dispatch
                                            tmp965
                                            '#(vector (any . each-any))))))
                                     ($sc-dispatch
                                       tmp965
                                       '(any . any)))))
                                ($sc-dispatch
                                  tmp965
                                  '(any any . any)))))
                           ($sc-dispatch tmp965 (quote (any any)))))
                        e955)))))
          (lambda (e1013 r1014 w1015 s1016 mod1017)
            (let ((e1018 (source-wrap143 e1013 w1015 s1016 mod1017)))
              ((lambda (tmp1019)
                 ((lambda (tmp1020)
                    (if tmp1020
                      (apply (lambda (_1021 x1022)
                               (call-with-values
                                 (lambda ()
                                   (gen-syntax920
                                     e1018
                                     x1022
                                     r1014
                                     '()
                                     ellipsis?159
                                     mod1017))
                                 (lambda (e1023 maps1024) (regen927 e1023))))
                             tmp1020)
                      ((lambda (_1025)
                         (syntax-violation
                           'syntax
                           "bad `syntax' form"
                           e1018))
                       tmp1019)))
                  ($sc-dispatch tmp1019 (quote (any any)))))
               e1018)))))
      (global-extend112
        'core
        'lambda
        (lambda (e1026 r1027 w1028 s1029 mod1030)
          ((lambda (tmp1031)
             ((lambda (tmp1032)
                (if tmp1032
                  (apply (lambda (_1033 c1034)
                           (chi-lambda-clause155
                             (source-wrap143 e1026 w1028 s1029 mod1030)
                             #f
                             c1034
                             r1027
                             w1028
                             mod1030
                             (lambda (names1035
                                      vars1036
                                      docstring1037
                                      body1038)
                               (build-lambda90
                                 s1029
                                 names1035
                                 vars1036
                                 docstring1037
                                 body1038))))
                         tmp1032)
                  (syntax-violation
                    #f
                    "source expression failed to match any pattern"
                    tmp1031)))
              ($sc-dispatch tmp1031 (quote (any . any)))))
           e1026)))
      (global-extend112
        'core
        'let
        (letrec ((chi-let1039
                   (lambda (e1040
                            r1041
                            w1042
                            s1043
                            mod1044
                            constructor1045
                            ids1046
                            vals1047
                            exps1048)
                     (if (not (valid-bound-ids?139 ids1046))
                       (syntax-violation
                         'let
                         "duplicate bound variable"
                         e1040)
                       (let ((labels1049 (gen-labels120 ids1046))
                             (new-vars1050 (map gen-var161 ids1046)))
                         (let ((nw1051
                                 (make-binding-wrap131
                                   ids1046
                                   labels1049
                                   w1042))
                               (nr1052
                                 (extend-var-env109
                                   labels1049
                                   new-vars1050
                                   r1041)))
                           (constructor1045
                             s1043
                             (map syntax->datum ids1046)
                             new-vars1050
                             (map (lambda (x1053)
                                    (chi150 x1053 r1041 w1042 mod1044))
                                  vals1047)
                             (chi-body154
                               exps1048
                               (source-wrap143 e1040 nw1051 s1043 mod1044)
                               nr1052
                               nw1051
                               mod1044))))))))
          (lambda (e1054 r1055 w1056 s1057 mod1058)
            ((lambda (tmp1059)
               ((lambda (tmp1060)
                  (if (if tmp1060
                        (apply (lambda (_1061 id1062 val1063 e11064 e21065)
                                 (and-map id?114 id1062))
                               tmp1060)
                        #f)
                    (apply (lambda (_1067 id1068 val1069 e11070 e21071)
                             (chi-let1039
                               e1054
                               r1055
                               w1056
                               s1057
                               mod1058
                               build-let94
                               id1068
                               val1069
                               (cons e11070 e21071)))
                           tmp1060)
                    ((lambda (tmp1075)
                       (if (if tmp1075
                             (apply (lambda (_1076
                                             f1077
                                             id1078
                                             val1079
                                             e11080
                                             e21081)
                                      (if (id?114 f1077)
                                        (and-map id?114 id1078)
                                        #f))
                                    tmp1075)
                             #f)
                         (apply (lambda (_1083
                                         f1084
                                         id1085
                                         val1086
                                         e11087
                                         e21088)
                                  (chi-let1039
                                    e1054
                                    r1055
                                    w1056
                                    s1057
                                    mod1058
                                    build-named-let95
                                    (cons f1084 id1085)
                                    val1086
                                    (cons e11087 e21088)))
                                tmp1075)
                         ((lambda (_1092)
                            (syntax-violation
                              'let
                              "bad let"
                              (source-wrap143 e1054 w1056 s1057 mod1058)))
                          tmp1059)))
                     ($sc-dispatch
                       tmp1059
                       '(any any #(each (any any)) any . each-any)))))
                ($sc-dispatch
                  tmp1059
                  '(any #(each (any any)) any . each-any))))
             e1054))))
      (global-extend112
        'core
        'letrec
        (lambda (e1093 r1094 w1095 s1096 mod1097)
          ((lambda (tmp1098)
             ((lambda (tmp1099)
                (if (if tmp1099
                      (apply (lambda (_1100 id1101 val1102 e11103 e21104)
                               (and-map id?114 id1101))
                             tmp1099)
                      #f)
                  (apply (lambda (_1106 id1107 val1108 e11109 e21110)
                           (let ((ids1111 id1107))
                             (if (not (valid-bound-ids?139 ids1111))
                               (syntax-violation
                                 'letrec
                                 "duplicate bound variable"
                                 e1093)
                               (let ((labels1113 (gen-labels120 ids1111))
                                     (new-vars1114 (map gen-var161 ids1111)))
                                 (let ((w1115 (make-binding-wrap131
                                                ids1111
                                                labels1113
                                                w1095))
                                       (r1116 (extend-var-env109
                                                labels1113
                                                new-vars1114
                                                r1094)))
                                   (build-letrec96
                                     s1096
                                     (map syntax->datum ids1111)
                                     new-vars1114
                                     (map (lambda (x1117)
                                            (chi150 x1117 r1116 w1115 mod1097))
                                          val1108)
                                     (chi-body154
                                       (cons e11109 e21110)
                                       (source-wrap143
                                         e1093
                                         w1115
                                         s1096
                                         mod1097)
                                       r1116
                                       w1115
                                       mod1097)))))))
                         tmp1099)
                  ((lambda (_1120)
                     (syntax-violation
                       'letrec
                       "bad letrec"
                       (source-wrap143 e1093 w1095 s1096 mod1097)))
                   tmp1098)))
              ($sc-dispatch
                tmp1098
                '(any #(each (any any)) any . each-any))))
           e1093)))
      (global-extend112
        'core
        'set!
        (lambda (e1121 r1122 w1123 s1124 mod1125)
          ((lambda (tmp1126)
             ((lambda (tmp1127)
                (if (if tmp1127
                      (apply (lambda (_1128 id1129 val1130) (id?114 id1129))
                             tmp1127)
                      #f)
                  (apply (lambda (_1131 id1132 val1133)
                           (let ((val1134 (chi150 val1133 r1122 w1123 mod1125))
                                 (n1135 (id-var-name136 id1132 w1123)))
                             (let ((b1136 (lookup111 n1135 r1122 mod1125)))
                               (let ((atom-key1137 (binding-type106 b1136)))
                                 (if (memv atom-key1137 (quote (lexical)))
                                   (build-lexical-assignment84
                                     s1124
                                     (syntax->datum id1132)
                                     (binding-value107 b1136)
                                     val1134)
                                   (if (memv atom-key1137 (quote (global)))
                                     (build-global-assignment87
                                       s1124
                                       n1135
                                       val1134
                                       mod1125)
                                     (if (memv atom-key1137
                                               '(displaced-lexical))
                                       (syntax-violation
                                         'set!
                                         "identifier out of context"
                                         (wrap142 id1132 w1123 mod1125))
                                       (syntax-violation
                                         'set!
                                         "bad set!"
                                         (source-wrap143
                                           e1121
                                           w1123
                                           s1124
                                           mod1125)))))))))
                         tmp1127)
                  ((lambda (tmp1138)
                     (if tmp1138
                       (apply (lambda (_1139 head1140 tail1141 val1142)
                                (call-with-values
                                  (lambda ()
                                    (syntax-type148
                                      head1140
                                      r1122
                                      '(())
                                      #f
                                      #f
                                      mod1125
                                      #t))
                                  (lambda (type1143
                                           value1144
                                           ee1145
                                           ww1146
                                           ss1147
                                           modmod1148)
                                    (if (memv type1143 (quote (module-ref)))
                                      (let ((val1149
                                              (chi150
                                                val1142
                                                r1122
                                                w1123
                                                mod1125)))
                                        (call-with-values
                                          (lambda ()
                                            (value1144
                                              (cons head1140 tail1141)))
                                          (lambda (id1151 mod1152)
                                            (build-global-assignment87
                                              s1124
                                              id1151
                                              val1149
                                              mod1152))))
                                      (build-application81
                                        s1124
                                        (chi150
                                          (list '#(syntax-object
                                                   setter
                                                   ((top)
                                                    #(ribcage () () ())
                                                    #(ribcage () () ())
                                                    #(ribcage
                                                      #(type
                                                        value
                                                        ee
                                                        ww
                                                        ss
                                                        modmod)
                                                      #((top)
                                                        (top)
                                                        (top)
                                                        (top)
                                                        (top)
                                                        (top))
                                                      #("i"
                                                        "i"
                                                        "i"
                                                        "i"
                                                        "i"
                                                        "i"))
                                                    #(ribcage
                                                      #(_ head tail val)
                                                      #((top)
                                                        (top)
                                                        (top)
                                                        (top))
                                                      #("i" "i" "i" "i"))
                                                    #(ribcage () () ())
                                                    #(ribcage
                                                      #(e r w s mod)
                                                      #((top)
                                                        (top)
                                                        (top)
                                                        (top)
                                                        (top))
                                                      #("i" "i" "i" "i" "i"))
                                                    #(ribcage
                                                      (lambda-var-list
                                                        gen-var
                                                        strip
                                                        ellipsis?
                                                        chi-void
                                                        eval-local-transformer
                                                        chi-local-syntax
                                                        chi-lambda-clause
                                                        chi-body
                                                        chi-macro
                                                        chi-application
                                                        chi-expr
                                                        chi
                                                        chi-top
                                                        syntax-type
                                                        chi-when-list
                                                        chi-install-global
                                                        chi-top-sequence
                                                        chi-sequence
                                                        source-wrap
                                                        wrap
                                                        bound-id-member?
                                                        distinct-bound-ids?
                                                        valid-bound-ids?
                                                        bound-id=?
                                                        free-id=?
                                                        id-var-name
                                                        same-marks?
                                                        join-marks
                                                        join-wraps
                                                        smart-append
                                                        make-binding-wrap
                                                        extend-ribcage!
                                                        make-empty-ribcage
                                                        new-mark
                                                        anti-mark
                                                        the-anti-mark
                                                        top-marked?
                                                        top-wrap
                                                        empty-wrap
                                                        set-ribcage-labels!
                                                        set-ribcage-marks!
                                                        set-ribcage-symnames!
                                                        ribcage-labels
                                                        ribcage-marks
                                                        ribcage-symnames
                                                        ribcage?
                                                        make-ribcage
                                                        gen-labels
                                                        gen-label
                                                        make-rename
                                                        rename-marks
                                                        rename-new
                                                        rename-old
                                                        subst-rename?
                                                        wrap-subst
                                                        wrap-marks
                                                        make-wrap
                                                        id-sym-name&marks
                                                        id-sym-name
                                                        id?
                                                        nonsymbol-id?
                                                        global-extend
                                                        lookup
                                                        macros-only-env
                                                        extend-var-env
                                                        extend-env
                                                        null-env
                                                        binding-value
                                                        binding-type
                                                        make-binding
                                                        arg-check
                                                        source-annotation
                                                        no-source
                                                        set-syntax-object-module!
                                                        set-syntax-object-wrap!
                                                        set-syntax-object-expression!
                                                        syntax-object-module
                                                        syntax-object-wrap
                                                        syntax-object-expression
                                                        syntax-object?
                                                        make-syntax-object
                                                        build-lexical-var
                                                        build-letrec
                                                        build-named-let
                                                        build-let
                                                        build-sequence
                                                        build-data
                                                        build-primref
                                                        build-lambda
                                                        build-global-definition
                                                        maybe-name-value!
                                                        build-global-assignment
                                                        build-global-reference
                                                        analyze-variable
                                                        build-lexical-assignment
                                                        build-lexical-reference
                                                        build-conditional
                                                        build-application
                                                        build-void
                                                        get-global-definition-hook
                                                        put-global-definition-hook
                                                        gensym-hook
                                                        local-eval-hook
                                                        top-level-eval-hook
                                                        fx<
                                                        fx=
                                                        fx-
                                                        fx+
                                                        *mode*
                                                        noexpand)
                                                      ((top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top)
                                                       (top))
                                                      ("i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"
                                                       "i"))
                                                    #(ribcage
                                                      (define-structure
                                                        and-map*)
                                                      ((top) (top))
                                                      ("i" "i")))
                                                   (hygiene guile))
                                                head1140)
                                          r1122
                                          w1123
                                          mod1125)
                                        (map (lambda (e1153)
                                               (chi150
                                                 e1153
                                                 r1122
                                                 w1123
                                                 mod1125))
                                             (append
                                               tail1141
                                               (list val1142))))))))
                              tmp1138)
                       ((lambda (_1155)
                          (syntax-violation
                            'set!
                            "bad set!"
                            (source-wrap143 e1121 w1123 s1124 mod1125)))
                        tmp1126)))
                   ($sc-dispatch
                     tmp1126
                     '(any (any . each-any) any)))))
              ($sc-dispatch tmp1126 (quote (any any any)))))
           e1121)))
      (global-extend112
        'module-ref
        '@
        (lambda (e1156)
          ((lambda (tmp1157)
             ((lambda (tmp1158)
                (if (if tmp1158
                      (apply (lambda (_1159 mod1160 id1161)
                               (if (and-map id?114 mod1160)
                                 (id?114 id1161)
                                 #f))
                             tmp1158)
                      #f)
                  (apply (lambda (_1163 mod1164 id1165)
                           (values
                             (syntax->datum id1165)
                             (syntax->datum
                               (cons '#(syntax-object
                                        public
                                        ((top)
                                         #(ribcage
                                           #(_ mod id)
                                           #((top) (top) (top))
                                           #("i" "i" "i"))
                                         #(ribcage () () ())
                                         #(ribcage #(e) #((top)) #("i"))
                                         #(ribcage
                                           (lambda-var-list
                                             gen-var
                                             strip
                                             ellipsis?
                                             chi-void
                                             eval-local-transformer
                                             chi-local-syntax
                                             chi-lambda-clause
                                             chi-body
                                             chi-macro
                                             chi-application
                                             chi-expr
                                             chi
                                             chi-top
                                             syntax-type
                                             chi-when-list
                                             chi-install-global
                                             chi-top-sequence
                                             chi-sequence
                                             source-wrap
                                             wrap
                                             bound-id-member?
                                             distinct-bound-ids?
                                             valid-bound-ids?
                                             bound-id=?
                                             free-id=?
                                             id-var-name
                                             same-marks?
                                             join-marks
                                             join-wraps
                                             smart-append
                                             make-binding-wrap
                                             extend-ribcage!
                                             make-empty-ribcage
                                             new-mark
                                             anti-mark
                                             the-anti-mark
                                             top-marked?
                                             top-wrap
                                             empty-wrap
                                             set-ribcage-labels!
                                             set-ribcage-marks!
                                             set-ribcage-symnames!
                                             ribcage-labels
                                             ribcage-marks
                                             ribcage-symnames
                                             ribcage?
                                             make-ribcage
                                             gen-labels
                                             gen-label
                                             make-rename
                                             rename-marks
                                             rename-new
                                             rename-old
                                             subst-rename?
                                             wrap-subst
                                             wrap-marks
                                             make-wrap
                                             id-sym-name&marks
                                             id-sym-name
                                             id?
                                             nonsymbol-id?
                                             global-extend
                                             lookup
                                             macros-only-env
                                             extend-var-env
                                             extend-env
                                             null-env
                                             binding-value
                                             binding-type
                                             make-binding
                                             arg-check
                                             source-annotation
                                             no-source
                                             set-syntax-object-module!
                                             set-syntax-object-wrap!
                                             set-syntax-object-expression!
                                             syntax-object-module
                                             syntax-object-wrap
                                             syntax-object-expression
                                             syntax-object?
                                             make-syntax-object
                                             build-lexical-var
                                             build-letrec
                                             build-named-let
                                             build-let
                                             build-sequence
                                             build-data
                                             build-primref
                                             build-lambda
                                             build-global-definition
                                             maybe-name-value!
                                             build-global-assignment
                                             build-global-reference
                                             analyze-variable
                                             build-lexical-assignment
                                             build-lexical-reference
                                             build-conditional
                                             build-application
                                             build-void
                                             get-global-definition-hook
                                             put-global-definition-hook
                                             gensym-hook
                                             local-eval-hook
                                             top-level-eval-hook
                                             fx<
                                             fx=
                                             fx-
                                             fx+
                                             *mode*
                                             noexpand)
                                           ((top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top))
                                           ("i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"))
                                         #(ribcage
                                           (define-structure and-map*)
                                           ((top) (top))
                                           ("i" "i")))
                                        (hygiene guile))
                                     mod1164))))
                         tmp1158)
                  (syntax-violation
                    #f
                    "source expression failed to match any pattern"
                    tmp1157)))
              ($sc-dispatch tmp1157 (quote (any each-any any)))))
           e1156)))
      (global-extend112
        'module-ref
        '@@
        (lambda (e1167)
          ((lambda (tmp1168)
             ((lambda (tmp1169)
                (if (if tmp1169
                      (apply (lambda (_1170 mod1171 id1172)
                               (if (and-map id?114 mod1171)
                                 (id?114 id1172)
                                 #f))
                             tmp1169)
                      #f)
                  (apply (lambda (_1174 mod1175 id1176)
                           (values
                             (syntax->datum id1176)
                             (syntax->datum
                               (cons '#(syntax-object
                                        private
                                        ((top)
                                         #(ribcage
                                           #(_ mod id)
                                           #((top) (top) (top))
                                           #("i" "i" "i"))
                                         #(ribcage () () ())
                                         #(ribcage #(e) #((top)) #("i"))
                                         #(ribcage
                                           (lambda-var-list
                                             gen-var
                                             strip
                                             ellipsis?
                                             chi-void
                                             eval-local-transformer
                                             chi-local-syntax
                                             chi-lambda-clause
                                             chi-body
                                             chi-macro
                                             chi-application
                                             chi-expr
                                             chi
                                             chi-top
                                             syntax-type
                                             chi-when-list
                                             chi-install-global
                                             chi-top-sequence
                                             chi-sequence
                                             source-wrap
                                             wrap
                                             bound-id-member?
                                             distinct-bound-ids?
                                             valid-bound-ids?
                                             bound-id=?
                                             free-id=?
                                             id-var-name
                                             same-marks?
                                             join-marks
                                             join-wraps
                                             smart-append
                                             make-binding-wrap
                                             extend-ribcage!
                                             make-empty-ribcage
                                             new-mark
                                             anti-mark
                                             the-anti-mark
                                             top-marked?
                                             top-wrap
                                             empty-wrap
                                             set-ribcage-labels!
                                             set-ribcage-marks!
                                             set-ribcage-symnames!
                                             ribcage-labels
                                             ribcage-marks
                                             ribcage-symnames
                                             ribcage?
                                             make-ribcage
                                             gen-labels
                                             gen-label
                                             make-rename
                                             rename-marks
                                             rename-new
                                             rename-old
                                             subst-rename?
                                             wrap-subst
                                             wrap-marks
                                             make-wrap
                                             id-sym-name&marks
                                             id-sym-name
                                             id?
                                             nonsymbol-id?
                                             global-extend
                                             lookup
                                             macros-only-env
                                             extend-var-env
                                             extend-env
                                             null-env
                                             binding-value
                                             binding-type
                                             make-binding
                                             arg-check
                                             source-annotation
                                             no-source
                                             set-syntax-object-module!
                                             set-syntax-object-wrap!
                                             set-syntax-object-expression!
                                             syntax-object-module
                                             syntax-object-wrap
                                             syntax-object-expression
                                             syntax-object?
                                             make-syntax-object
                                             build-lexical-var
                                             build-letrec
                                             build-named-let
                                             build-let
                                             build-sequence
                                             build-data
                                             build-primref
                                             build-lambda
                                             build-global-definition
                                             maybe-name-value!
                                             build-global-assignment
                                             build-global-reference
                                             analyze-variable
                                             build-lexical-assignment
                                             build-lexical-reference
                                             build-conditional
                                             build-application
                                             build-void
                                             get-global-definition-hook
                                             put-global-definition-hook
                                             gensym-hook
                                             local-eval-hook
                                             top-level-eval-hook
                                             fx<
                                             fx=
                                             fx-
                                             fx+
                                             *mode*
                                             noexpand)
                                           ((top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top)
                                            (top))
                                           ("i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"
                                            "i"))
                                         #(ribcage
                                           (define-structure and-map*)
                                           ((top) (top))
                                           ("i" "i")))
                                        (hygiene guile))
                                     mod1175))))
                         tmp1169)
                  (syntax-violation
                    #f
                    "source expression failed to match any pattern"
                    tmp1168)))
              ($sc-dispatch tmp1168 (quote (any each-any any)))))
           e1167)))
      (global-extend112
        'core
        'if
        (lambda (e1178 r1179 w1180 s1181 mod1182)
          ((lambda (tmp1183)
             ((lambda (tmp1184)
                (if tmp1184
                  (apply (lambda (_1185 test1186 then1187)
                           (build-conditional82
                             s1181
                             (chi150 test1186 r1179 w1180 mod1182)
                             (chi150 then1187 r1179 w1180 mod1182)
                             (build-void80 #f)))
                         tmp1184)
                  ((lambda (tmp1188)
                     (if tmp1188
                       (apply (lambda (_1189 test1190 then1191 else1192)
                                (build-conditional82
                                  s1181
                                  (chi150 test1190 r1179 w1180 mod1182)
                                  (chi150 then1191 r1179 w1180 mod1182)
                                  (chi150 else1192 r1179 w1180 mod1182)))
                              tmp1188)
                       (syntax-violation
                         #f
                         "source expression failed to match any pattern"
                         tmp1183)))
                   ($sc-dispatch tmp1183 (quote (any any any any))))))
              ($sc-dispatch tmp1183 (quote (any any any)))))
           e1178)))
      (global-extend112
        'begin
        'begin
        '())
      (global-extend112
        'define
        'define
        '())
      (global-extend112
        'define-syntax
        'define-syntax
        '())
      (global-extend112
        'eval-when
        'eval-when
        '())
      (global-extend112
        'core
        'syntax-case
        (letrec ((gen-syntax-case1196
                   (lambda (x1197 keys1198 clauses1199 r1200 mod1201)
                     (if (null? clauses1199)
                       (build-application81
                         #f
                         (build-primref91 #f (quote syntax-violation))
                         (list (build-data92 #f #f)
                               (build-data92
                                 #f
                                 "source expression failed to match any pattern")
                               x1197))
                       ((lambda (tmp1202)
                          ((lambda (tmp1203)
                             (if tmp1203
                               (apply (lambda (pat1204 exp1205)
                                        (if (if (id?114 pat1204)
                                              (and-map
                                                (lambda (x1206)
                                                  (not (free-id=?137
                                                         pat1204
                                                         x1206)))
                                                (cons '#(syntax-object
                                                         ...
                                                         ((top)
                                                          #(ribcage
                                                            #(pat exp)
                                                            #((top) (top))
                                                            #("i" "i"))
                                                          #(ribcage () () ())
                                                          #(ribcage
                                                            #(x
                                                              keys
                                                              clauses
                                                              r
                                                              mod)
                                                            #((top)
                                                              (top)
                                                              (top)
                                                              (top)
                                                              (top))
                                                            #("i"
                                                              "i"
                                                              "i"
                                                              "i"
                                                              "i"))
                                                          #(ribcage
                                                            (gen-syntax-case
                                                              gen-clause
                                                              build-dispatch-call
                                                              convert-pattern)
                                                            ((top)
                                                             (top)
                                                             (top)
                                                             (top))
                                                            ("i" "i" "i" "i"))
                                                          #(ribcage
                                                            (lambda-var-list
                                                              gen-var
                                                              strip
                                                              ellipsis?
                                                              chi-void
                                                              eval-local-transformer
                                                              chi-local-syntax
                                                              chi-lambda-clause
                                                              chi-body
                                                              chi-macro
                                                              chi-application
                                                              chi-expr
                                                              chi
                                                              chi-top
                                                              syntax-type
                                                              chi-when-list
                                                              chi-install-global
                                                              chi-top-sequence
                                                              chi-sequence
                                                              source-wrap
                                                              wrap
                                                              bound-id-member?
                                                              distinct-bound-ids?
                                                              valid-bound-ids?
                                                              bound-id=?
                                                              free-id=?
                                                              id-var-name
                                                              same-marks?
                                                              join-marks
                                                              join-wraps
                                                              smart-append
                                                              make-binding-wrap
                                                              extend-ribcage!
                                                              make-empty-ribcage
                                                              new-mark
                                                              anti-mark
                                                              the-anti-mark
                                                              top-marked?
                                                              top-wrap
                                                              empty-wrap
                                                              set-ribcage-labels!
                                                              set-ribcage-marks!
                                                              set-ribcage-symnames!
                                                              ribcage-labels
                                                              ribcage-marks
                                                              ribcage-symnames
                                                              ribcage?
                                                              make-ribcage
                                                              gen-labels
                                                              gen-label
                                                              make-rename
                                                              rename-marks
                                                              rename-new
                                                              rename-old
                                                              subst-rename?
                                                              wrap-subst
                                                              wrap-marks
                                                              make-wrap
                                                              id-sym-name&marks
                                                              id-sym-name
                                                              id?
                                                              nonsymbol-id?
                                                              global-extend
                                                              lookup
                                                              macros-only-env
                                                              extend-var-env
                                                              extend-env
                                                              null-env
                                                              binding-value
                                                              binding-type
                                                              make-binding
                                                              arg-check
                                                              source-annotation
                                                              no-source
                                                              set-syntax-object-module!
                                                              set-syntax-object-wrap!
                                                              set-syntax-object-expression!
                                                              syntax-object-module
                                                              syntax-object-wrap
                                                              syntax-object-expression
                                                              syntax-object?
                                                              make-syntax-object
                                                              build-lexical-var
                                                              build-letrec
                                                              build-named-let
                                                              build-let
                                                              build-sequence
                                                              build-data
                                                              build-primref
                                                              build-lambda
                                                              build-global-definition
                                                              maybe-name-value!
                                                              build-global-assignment
                                                              build-global-reference
                                                              analyze-variable
                                                              build-lexical-assignment
                                                              build-lexical-reference
                                                              build-conditional
                                                              build-application
                                                              build-void
                                                              get-global-definition-hook
                                                              put-global-definition-hook
                                                              gensym-hook
                                                              local-eval-hook
                                                              top-level-eval-hook
                                                              fx<
                                                              fx=
                                                              fx-
                                                              fx+
                                                              *mode*
                                                              noexpand)
                                                            ((top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top)
                                                             (top))
                                                            ("i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"
                                                             "i"))
                                                          #(ribcage
                                                            (define-structure
                                                              and-map*)
                                                            ((top) (top))
                                                            ("i" "i")))
                                                         (hygiene guile))
                                                      keys1198))
                                              #f)
                                          (let ((labels1207
                                                  (list (gen-label119)))
                                                (var1208 (gen-var161 pat1204)))
                                            (build-application81
                                              #f
                                              (build-lambda90
                                                #f
                                                (list (syntax->datum pat1204))
                                                (list var1208)
                                                #f
                                                (chi150
                                                  exp1205
                                                  (extend-env108
                                                    labels1207
                                                    (list (cons 'syntax
                                                                (cons var1208
                                                                      0)))
                                                    r1200)
                                                  (make-binding-wrap131
                                                    (list pat1204)
                                                    labels1207
                                                    '(()))
                                                  mod1201))
                                              (list x1197)))
                                          (gen-clause1195
                                            x1197
                                            keys1198
                                            (cdr clauses1199)
                                            r1200
                                            pat1204
                                            #t
                                            exp1205
                                            mod1201)))
                                      tmp1203)
                               ((lambda (tmp1209)
                                  (if tmp1209
                                    (apply (lambda (pat1210 fender1211 exp1212)
                                             (gen-clause1195
                                               x1197
                                               keys1198
                                               (cdr clauses1199)
                                               r1200
                                               pat1210
                                               fender1211
                                               exp1212
                                               mod1201))
                                           tmp1209)
                                    ((lambda (_1213)
                                       (syntax-violation
                                         'syntax-case
                                         "invalid clause"
                                         (car clauses1199)))
                                     tmp1202)))
                                ($sc-dispatch tmp1202 (quote (any any any))))))
                           ($sc-dispatch tmp1202 (quote (any any)))))
                        (car clauses1199)))))
                 (gen-clause1195
                   (lambda (x1214
                            keys1215
                            clauses1216
                            r1217
                            pat1218
                            fender1219
                            exp1220
                            mod1221)
                     (call-with-values
                       (lambda ()
                         (convert-pattern1193 pat1218 keys1215))
                       (lambda (p1222 pvars1223)
                         (if (not (distinct-bound-ids?140 (map car pvars1223)))
                           (syntax-violation
                             'syntax-case
                             "duplicate pattern variable"
                             pat1218)
                           (if (not (and-map
                                      (lambda (x1224)
                                        (not (ellipsis?159 (car x1224))))
                                      pvars1223))
                             (syntax-violation
                               'syntax-case
                               "misplaced ellipsis"
                               pat1218)
                             (let ((y1225 (gen-var161 (quote tmp))))
                               (build-application81
                                 #f
                                 (build-lambda90
                                   #f
                                   (list (quote tmp))
                                   (list y1225)
                                   #f
                                   (let ((y1226 (build-lexical-reference83
                                                  'value
                                                  #f
                                                  'tmp
                                                  y1225)))
                                     (build-conditional82
                                       #f
                                       ((lambda (tmp1227)
                                          ((lambda (tmp1228)
                                             (if tmp1228
                                               (apply (lambda () y1226)
                                                      tmp1228)
                                               ((lambda (_1229)
                                                  (build-conditional82
                                                    #f
                                                    y1226
                                                    (build-dispatch-call1194
                                                      pvars1223
                                                      fender1219
                                                      y1226
                                                      r1217
                                                      mod1221)
                                                    (build-data92 #f #f)))
                                                tmp1227)))
                                           ($sc-dispatch
                                             tmp1227
                                             '#(atom #t))))
                                        fender1219)
                                       (build-dispatch-call1194
                                         pvars1223
                                         exp1220
                                         y1226
                                         r1217
                                         mod1221)
                                       (gen-syntax-case1196
                                         x1214
                                         keys1215
                                         clauses1216
                                         r1217
                                         mod1221))))
                                 (list (if (eq? p1222 (quote any))
                                         (build-application81
                                           #f
                                           (build-primref91 #f (quote list))
                                           (list x1214))
                                         (build-application81
                                           #f
                                           (build-primref91
                                             #f
                                             '$sc-dispatch)
                                           (list x1214
                                                 (build-data92
                                                   #f
                                                   p1222)))))))))))))
                 (build-dispatch-call1194
                   (lambda (pvars1230 exp1231 y1232 r1233 mod1234)
                     (let ((ids1235 (map car pvars1230))
                           (levels1236 (map cdr pvars1230)))
                       (let ((labels1237 (gen-labels120 ids1235))
                             (new-vars1238 (map gen-var161 ids1235)))
                         (build-application81
                           #f
                           (build-primref91 #f (quote apply))
                           (list (build-lambda90
                                   #f
                                   (map syntax->datum ids1235)
                                   new-vars1238
                                   #f
                                   (chi150
                                     exp1231
                                     (extend-env108
                                       labels1237
                                       (map (lambda (var1239 level1240)
                                              (cons 'syntax
                                                    (cons var1239 level1240)))
                                            new-vars1238
                                            (map cdr pvars1230))
                                       r1233)
                                     (make-binding-wrap131
                                       ids1235
                                       labels1237
                                       '(()))
                                     mod1234))
                                 y1232))))))
                 (convert-pattern1193
                   (lambda (pattern1241 keys1242)
                     (letrec ((cvt1243
                                (lambda (p1244 n1245 ids1246)
                                  (if (id?114 p1244)
                                    (if (bound-id-member?141 p1244 keys1242)
                                      (values
                                        (vector (quote free-id) p1244)
                                        ids1246)
                                      (values
                                        'any
                                        (cons (cons p1244 n1245) ids1246)))
                                    ((lambda (tmp1247)
                                       ((lambda (tmp1248)
                                          (if (if tmp1248
                                                (apply (lambda (x1249 dots1250)
                                                         (ellipsis?159
                                                           dots1250))
                                                       tmp1248)
                                                #f)
                                            (apply (lambda (x1251 dots1252)
                                                     (call-with-values
                                                       (lambda ()
                                                         (cvt1243
                                                           x1251
                                                           (fx+72 n1245 1)
                                                           ids1246))
                                                       (lambda (p1253 ids1254)
                                                         (values
                                                           (if (eq? p1253
                                                                    'any)
                                                             'each-any
                                                             (vector
                                                               'each
                                                               p1253))
                                                           ids1254))))
                                                   tmp1248)
                                            ((lambda (tmp1255)
                                               (if tmp1255
                                                 (apply (lambda (x1256 y1257)
                                                          (call-with-values
                                                            (lambda ()
                                                              (cvt1243
                                                                y1257
                                                                n1245
                                                                ids1246))
                                                            (lambda (y1258
                                                                     ids1259)
                                                              (call-with-values
                                                                (lambda ()
                                                                  (cvt1243
                                                                    x1256
                                                                    n1245
                                                                    ids1259))
                                                                (lambda (x1260
                                                                         ids1261)
                                                                  (values
                                                                    (cons x1260
                                                                          y1258)
                                                                    ids1261))))))
                                                        tmp1255)
                                                 ((lambda (tmp1262)
                                                    (if tmp1262
                                                      (apply (lambda ()
                                                               (values
                                                                 '()
                                                                 ids1246))
                                                             tmp1262)
                                                      ((lambda (tmp1263)
                                                         (if tmp1263
                                                           (apply (lambda (x1264)
                                                                    (call-with-values
                                                                      (lambda ()
                                                                        (cvt1243
                                                                          x1264
                                                                          n1245
                                                                          ids1246))
                                                                      (lambda (p1266
                                                                               ids1267)
                                                                        (values
                                                                          (vector
                                                                            'vector
                                                                            p1266)
                                                                          ids1267))))
                                                                  tmp1263)
                                                           ((lambda (x1268)
                                                              (values
                                                                (vector
                                                                  'atom
                                                                  (strip160
                                                                    p1244
                                                                    '(())))
                                                                ids1246))
                                                            tmp1247)))
                                                       ($sc-dispatch
                                                         tmp1247
                                                         '#(vector
                                                            each-any)))))
                                                  ($sc-dispatch
                                                    tmp1247
                                                    '()))))
                                             ($sc-dispatch
                                               tmp1247
                                               '(any . any)))))
                                        ($sc-dispatch
                                          tmp1247
                                          '(any any))))
                                     p1244)))))
                       (cvt1243 pattern1241 0 (quote ()))))))
          (lambda (e1269 r1270 w1271 s1272 mod1273)
            (let ((e1274 (source-wrap143 e1269 w1271 s1272 mod1273)))
              ((lambda (tmp1275)
                 ((lambda (tmp1276)
                    (if tmp1276
                      (apply (lambda (_1277 val1278 key1279 m1280)
                               (if (and-map
                                     (lambda (x1281)
                                       (if (id?114 x1281)
                                         (not (ellipsis?159 x1281))
                                         #f))
                                     key1279)
                                 (let ((x1283 (gen-var161 (quote tmp))))
                                   (build-application81
                                     s1272
                                     (build-lambda90
                                       #f
                                       (list (quote tmp))
                                       (list x1283)
                                       #f
                                       (gen-syntax-case1196
                                         (build-lexical-reference83
                                           'value
                                           #f
                                           'tmp
                                           x1283)
                                         key1279
                                         m1280
                                         r1270
                                         mod1273))
                                     (list (chi150
                                             val1278
                                             r1270
                                             '(())
                                             mod1273))))
                                 (syntax-violation
                                   'syntax-case
                                   "invalid literals list"
                                   e1274)))
                             tmp1276)
                      (syntax-violation
                        #f
                        "source expression failed to match any pattern"
                        tmp1275)))
                  ($sc-dispatch
                    tmp1275
                    '(any any each-any . each-any))))
               e1274)))))
      (set! sc-expand
        (lambda (x1287 . rest1286)
          (if (if (pair? x1287)
                (equal? (car x1287) noexpand70)
                #f)
            (cadr x1287)
            (let ((m1288 (if (null? rest1286) (quote e) (car rest1286)))
                  (esew1289
                    (if (let ((t1290 (null? rest1286)))
                          (if t1290 t1290 (null? (cdr rest1286))))
                      '(eval)
                      (cadr rest1286))))
              (with-fluid*
                *mode*71
                m1288
                (lambda ()
                  (chi-top149
                    x1287
                    '()
                    '((top))
                    m1288
                    esew1289
                    (cons 'hygiene
                          (module-name (current-module))))))))))
      (set! identifier?
        (lambda (x1291) (nonsymbol-id?113 x1291)))
      (set! datum->syntax
        (lambda (id1292 datum1293)
          (make-syntax-object97
            datum1293
            (syntax-object-wrap100 id1292)
            #f)))
      (set! syntax->datum
        (lambda (x1294) (strip160 x1294 (quote (())))))
      (set! generate-temporaries
        (lambda (ls1295)
          (begin
            (let ((x1296 ls1295))
              (if (not (list? x1296))
                (syntax-violation
                  'generate-temporaries
                  "invalid argument"
                  x1296)))
            (map (lambda (x1297)
                   (wrap142 (gensym) (quote ((top))) #f))
                 ls1295))))
      (set! free-identifier=?
        (lambda (x1298 y1299)
          (begin
            (let ((x1300 x1298))
              (if (not (nonsymbol-id?113 x1300))
                (syntax-violation
                  'free-identifier=?
                  "invalid argument"
                  x1300)))
            (let ((x1301 y1299))
              (if (not (nonsymbol-id?113 x1301))
                (syntax-violation
                  'free-identifier=?
                  "invalid argument"
                  x1301)))
            (free-id=?137 x1298 y1299))))
      (set! bound-identifier=?
        (lambda (x1302 y1303)
          (begin
            (let ((x1304 x1302))
              (if (not (nonsymbol-id?113 x1304))
                (syntax-violation
                  'bound-identifier=?
                  "invalid argument"
                  x1304)))
            (let ((x1305 y1303))
              (if (not (nonsymbol-id?113 x1305))
                (syntax-violation
                  'bound-identifier=?
                  "invalid argument"
                  x1305)))
            (bound-id=?138 x1302 y1303))))
      (set! syntax-violation
        (lambda (who1309 message1308 form1307 . subform1306)
          (begin
            (let ((x1310 who1309))
              (if (not ((lambda (x1311)
                          (let ((t1312 (not x1311)))
                            (if t1312
                              t1312
                              (let ((t1313 (string? x1311)))
                                (if t1313 t1313 (symbol? x1311))))))
                        x1310))
                (syntax-violation
                  'syntax-violation
                  "invalid argument"
                  x1310)))
            (let ((x1314 message1308))
              (if (not (string? x1314))
                (syntax-violation
                  'syntax-violation
                  "invalid argument"
                  x1314)))
            (scm-error
              'syntax-error
              'sc-expand
              (string-append
                (if who1309 "~a: " "")
                "~a "
                (if (null? subform1306)
                  "in ~a"
                  "in subform `~s' of `~s'"))
              (let ((tail1315
                      (cons message1308
                            (map (lambda (x1316) (strip160 x1316 (quote (()))))
                                 (append subform1306 (list form1307))))))
                (if who1309 (cons who1309 tail1315) tail1315))
              #f))))
      (letrec ((match1321
                 (lambda (e1322 p1323 w1324 r1325 mod1326)
                   (if (not r1325)
                     #f
                     (if (eq? p1323 (quote any))
                       (cons (wrap142 e1322 w1324 mod1326) r1325)
                       (if (syntax-object?98 e1322)
                         (match*1320
                           (syntax-object-expression99 e1322)
                           p1323
                           (join-wraps133
                             w1324
                             (syntax-object-wrap100 e1322))
                           r1325
                           (syntax-object-module101 e1322))
                         (match*1320 e1322 p1323 w1324 r1325 mod1326))))))
               (match*1320
                 (lambda (e1327 p1328 w1329 r1330 mod1331)
                   (if (null? p1328)
                     (if (null? e1327) r1330 #f)
                     (if (pair? p1328)
                       (if (pair? e1327)
                         (match1321
                           (car e1327)
                           (car p1328)
                           w1329
                           (match1321
                             (cdr e1327)
                             (cdr p1328)
                             w1329
                             r1330
                             mod1331)
                           mod1331)
                         #f)
                       (if (eq? p1328 (quote each-any))
                         (let ((l1332 (match-each-any1318
                                        e1327
                                        w1329
                                        mod1331)))
                           (if l1332 (cons l1332 r1330) #f))
                         (let ((atom-key1333 (vector-ref p1328 0)))
                           (if (memv atom-key1333 (quote (each)))
                             (if (null? e1327)
                               (match-empty1319 (vector-ref p1328 1) r1330)
                               (let ((l1334 (match-each1317
                                              e1327
                                              (vector-ref p1328 1)
                                              w1329
                                              mod1331)))
                                 (if l1334
                                   (letrec ((collect1335
                                              (lambda (l1336)
                                                (if (null? (car l1336))
                                                  r1330
                                                  (cons (map car l1336)
                                                        (collect1335
                                                          (map cdr l1336)))))))
                                     (collect1335 l1334))
                                   #f)))
                             (if (memv atom-key1333 (quote (free-id)))
                               (if (id?114 e1327)
                                 (if (free-id=?137
                                       (wrap142 e1327 w1329 mod1331)
                                       (vector-ref p1328 1))
                                   r1330
                                   #f)
                                 #f)
                               (if (memv atom-key1333 (quote (atom)))
                                 (if (equal?
                                       (vector-ref p1328 1)
                                       (strip160 e1327 w1329))
                                   r1330
                                   #f)
                                 (if (memv atom-key1333 (quote (vector)))
                                   (if (vector? e1327)
                                     (match1321
                                       (vector->list e1327)
                                       (vector-ref p1328 1)
                                       w1329
                                       r1330
                                       mod1331)
                                     #f)))))))))))
               (match-empty1319
                 (lambda (p1337 r1338)
                   (if (null? p1337)
                     r1338
                     (if (eq? p1337 (quote any))
                       (cons (quote ()) r1338)
                       (if (pair? p1337)
                         (match-empty1319
                           (car p1337)
                           (match-empty1319 (cdr p1337) r1338))
                         (if (eq? p1337 (quote each-any))
                           (cons (quote ()) r1338)
                           (let ((atom-key1339 (vector-ref p1337 0)))
                             (if (memv atom-key1339 (quote (each)))
                               (match-empty1319 (vector-ref p1337 1) r1338)
                               (if (memv atom-key1339 (quote (free-id atom)))
                                 r1338
                                 (if (memv atom-key1339 (quote (vector)))
                                   (match-empty1319
                                     (vector-ref p1337 1)
                                     r1338)))))))))))
               (match-each-any1318
                 (lambda (e1340 w1341 mod1342)
                   (if (pair? e1340)
                     (let ((l1343 (match-each-any1318
                                    (cdr e1340)
                                    w1341
                                    mod1342)))
                       (if l1343
                         (cons (wrap142 (car e1340) w1341 mod1342) l1343)
                         #f))
                     (if (null? e1340)
                       '()
                       (if (syntax-object?98 e1340)
                         (match-each-any1318
                           (syntax-object-expression99 e1340)
                           (join-wraps133
                             w1341
                             (syntax-object-wrap100 e1340))
                           mod1342)
                         #f)))))
               (match-each1317
                 (lambda (e1344 p1345 w1346 mod1347)
                   (if (pair? e1344)
                     (let ((first1348
                             (match1321
                               (car e1344)
                               p1345
                               w1346
                               '()
                               mod1347)))
                       (if first1348
                         (let ((rest1349
                                 (match-each1317
                                   (cdr e1344)
                                   p1345
                                   w1346
                                   mod1347)))
                           (if rest1349 (cons first1348 rest1349) #f))
                         #f))
                     (if (null? e1344)
                       '()
                       (if (syntax-object?98 e1344)
                         (match-each1317
                           (syntax-object-expression99 e1344)
                           p1345
                           (join-wraps133
                             w1346
                             (syntax-object-wrap100 e1344))
                           (syntax-object-module101 e1344))
                         #f))))))
        (set! $sc-dispatch
          (lambda (e1350 p1351)
            (if (eq? p1351 (quote any))
              (list e1350)
              (if (syntax-object?98 e1350)
                (match*1320
                  (syntax-object-expression99 e1350)
                  p1351
                  (syntax-object-wrap100 e1350)
                  '()
                  (syntax-object-module101 e1350))
                (match*1320
                  e1350
                  p1351
                  '(())
                  '()
                  #f)))))))))

(define with-syntax
  (make-syncase-macro
    'macro
    (lambda (x1352)
      ((lambda (tmp1353)
         ((lambda (tmp1354)
            (if tmp1354
              (apply (lambda (_1355 e11356 e21357)
                       (cons '#(syntax-object
                                begin
                                ((top)
                                 #(ribcage
                                   #(_ e1 e2)
                                   #((top) (top) (top))
                                   #("i" "i" "i"))
                                 #(ribcage () () ())
                                 #(ribcage #(x) #((top)) #("i")))
                                (hygiene guile))
                             (cons e11356 e21357)))
                     tmp1354)
              ((lambda (tmp1359)
                 (if tmp1359
                   (apply (lambda (_1360 out1361 in1362 e11363 e21364)
                            (list '#(syntax-object
                                     syntax-case
                                     ((top)
                                      #(ribcage
                                        #(_ out in e1 e2)
                                        #((top) (top) (top) (top) (top))
                                        #("i" "i" "i" "i" "i"))
                                      #(ribcage () () ())
                                      #(ribcage #(x) #((top)) #("i")))
                                     (hygiene guile))
                                  in1362
                                  '()
                                  (list out1361
                                        (cons '#(syntax-object
                                                 begin
                                                 ((top)
                                                  #(ribcage
                                                    #(_ out in e1 e2)
                                                    #((top)
                                                      (top)
                                                      (top)
                                                      (top)
                                                      (top))
                                                    #("i" "i" "i" "i" "i"))
                                                  #(ribcage () () ())
                                                  #(ribcage
                                                    #(x)
                                                    #((top))
                                                    #("i")))
                                                 (hygiene guile))
                                              (cons e11363 e21364)))))
                          tmp1359)
                   ((lambda (tmp1366)
                      (if tmp1366
                        (apply (lambda (_1367 out1368 in1369 e11370 e21371)
                                 (list '#(syntax-object
                                          syntax-case
                                          ((top)
                                           #(ribcage
                                             #(_ out in e1 e2)
                                             #((top) (top) (top) (top) (top))
                                             #("i" "i" "i" "i" "i"))
                                           #(ribcage () () ())
                                           #(ribcage #(x) #((top)) #("i")))
                                          (hygiene guile))
                                       (cons '#(syntax-object
                                                list
                                                ((top)
                                                 #(ribcage
                                                   #(_ out in e1 e2)
                                                   #((top)
                                                     (top)
                                                     (top)
                                                     (top)
                                                     (top))
                                                   #("i" "i" "i" "i" "i"))
                                                 #(ribcage () () ())
                                                 #(ribcage
                                                   #(x)
                                                   #((top))
                                                   #("i")))
                                                (hygiene guile))
                                             in1369)
                                       '()
                                       (list out1368
                                             (cons '#(syntax-object
                                                      begin
                                                      ((top)
                                                       #(ribcage
                                                         #(_ out in e1 e2)
                                                         #((top)
                                                           (top)
                                                           (top)
                                                           (top)
                                                           (top))
                                                         #("i"
                                                           "i"
                                                           "i"
                                                           "i"
                                                           "i"))
                                                       #(ribcage () () ())
                                                       #(ribcage
                                                         #(x)
                                                         #((top))
                                                         #("i")))
                                                      (hygiene guile))
                                                   (cons e11370 e21371)))))
                               tmp1366)
                        (syntax-violation
                          #f
                          "source expression failed to match any pattern"
                          tmp1353)))
                    ($sc-dispatch
                      tmp1353
                      '(any #(each (any any)) any . each-any)))))
               ($sc-dispatch
                 tmp1353
                 '(any ((any any)) any . each-any)))))
          ($sc-dispatch
            tmp1353
            '(any () any . each-any))))
       x1352))))

(define syntax-rules
  (make-syncase-macro
    'macro
    (lambda (x1375)
      ((lambda (tmp1376)
         ((lambda (tmp1377)
            (if tmp1377
              (apply (lambda (_1378
                              k1379
                              keyword1380
                              pattern1381
                              template1382)
                       (list '#(syntax-object
                                lambda
                                ((top)
                                 #(ribcage
                                   #(_ k keyword pattern template)
                                   #((top) (top) (top) (top) (top))
                                   #("i" "i" "i" "i" "i"))
                                 #(ribcage () () ())
                                 #(ribcage #(x) #((top)) #("i")))
                                (hygiene guile))
                             '(#(syntax-object
                                 x
                                 ((top)
                                  #(ribcage
                                    #(_ k keyword pattern template)
                                    #((top) (top) (top) (top) (top))
                                    #("i" "i" "i" "i" "i"))
                                  #(ribcage () () ())
                                  #(ribcage #(x) #((top)) #("i")))
                                 (hygiene guile)))
                             (cons '#(syntax-object
                                      syntax-case
                                      ((top)
                                       #(ribcage
                                         #(_ k keyword pattern template)
                                         #((top) (top) (top) (top) (top))
                                         #("i" "i" "i" "i" "i"))
                                       #(ribcage () () ())
                                       #(ribcage #(x) #((top)) #("i")))
                                      (hygiene guile))
                                   (cons '#(syntax-object
                                            x
                                            ((top)
                                             #(ribcage
                                               #(_ k keyword pattern template)
                                               #((top) (top) (top) (top) (top))
                                               #("i" "i" "i" "i" "i"))
                                             #(ribcage () () ())
                                             #(ribcage #(x) #((top)) #("i")))
                                            (hygiene guile))
                                         (cons k1379
                                               (map (lambda (tmp1385 tmp1384)
                                                      (list (cons '#(syntax-object
                                                                     dummy
                                                                     ((top)
                                                                      #(ribcage
                                                                        #(_
                                                                          k
                                                                          keyword
                                                                          pattern
                                                                          template)
                                                                        #((top)
                                                                          (top)
                                                                          (top)
                                                                          (top)
                                                                          (top))
                                                                        #("i"
                                                                          "i"
                                                                          "i"
                                                                          "i"
                                                                          "i"))
                                                                      #(ribcage
                                                                        ()
                                                                        ()
                                                                        ())
                                                                      #(ribcage
                                                                        #(x)
                                                                        #((top))
                                                                        #("i")))
                                                                     (hygiene
                                                                       guile))
                                                                  tmp1384)
                                                            (list '#(syntax-object
                                                                     syntax
                                                                     ((top)
                                                                      #(ribcage
                                                                        #(_
                                                                          k
                                                                          keyword
                                                                          pattern
                                                                          template)
                                                                        #((top)
                                                                          (top)
                                                                          (top)
                                                                          (top)
                                                                          (top))
                                                                        #("i"
                                                                          "i"
                                                                          "i"
                                                                          "i"
                                                                          "i"))
                                                                      #(ribcage
                                                                        ()
                                                                        ()
                                                                        ())
                                                                      #(ribcage
                                                                        #(x)
                                                                        #((top))
                                                                        #("i")))
                                                                     (hygiene
                                                                       guile))
                                                                  tmp1385)))
                                                    template1382
                                                    pattern1381))))))
                     tmp1377)
              (syntax-violation
                #f
                "source expression failed to match any pattern"
                tmp1376)))
          ($sc-dispatch
            tmp1376
            '(any each-any . #(each ((any . any) any))))))
       x1375))))

(define let*
  (make-extended-syncase-macro
    (module-ref (current-module) (quote let*))
    'macro
    (lambda (x1386)
      ((lambda (tmp1387)
         ((lambda (tmp1388)
            (if (if tmp1388
                  (apply (lambda (let*1389 x1390 v1391 e11392 e21393)
                           (and-map identifier? x1390))
                         tmp1388)
                  #f)
              (apply (lambda (let*1395 x1396 v1397 e11398 e21399)
                       (letrec ((f1400 (lambda (bindings1401)
                                         (if (null? bindings1401)
                                           (cons '#(syntax-object
                                                    let
                                                    ((top)
                                                     #(ribcage () () ())
                                                     #(ribcage
                                                       #(f bindings)
                                                       #((top) (top))
                                                       #("i" "i"))
                                                     #(ribcage
                                                       #(let* x v e1 e2)
                                                       #((top)
                                                         (top)
                                                         (top)
                                                         (top)
                                                         (top))
                                                       #("i" "i" "i" "i" "i"))
                                                     #(ribcage () () ())
                                                     #(ribcage
                                                       #(x)
                                                       #((top))
                                                       #("i")))
                                                    (hygiene guile))
                                                 (cons '()
                                                       (cons e11398 e21399)))
                                           ((lambda (tmp1405)
                                              ((lambda (tmp1406)
                                                 (if tmp1406
                                                   (apply (lambda (body1407
                                                                   binding1408)
                                                            (list '#(syntax-object
                                                                     let
                                                                     ((top)
                                                                      #(ribcage
                                                                        #(body
                                                                          binding)
                                                                        #((top)
                                                                          (top))
                                                                        #("i"
                                                                          "i"))
                                                                      #(ribcage
                                                                        ()
                                                                        ()
                                                                        ())
                                                                      #(ribcage
                                                                        #(f
                                                                          bindings)
                                                                        #((top)
                                                                          (top))
                                                                        #("i"
                                                                          "i"))
                                                                      #(ribcage
                                                                        #(let*
                                                                          x
                                                                          v
                                                                          e1
                                                                          e2)
                                                                        #((top)
                                                                          (top)
                                                                          (top)
                                                                          (top)
                                                                          (top))
                                                                        #("i"
                                                                          "i"
                                                                          "i"
                                                                          "i"
                                                                          "i"))
                                                                      #(ribcage
                                                                        ()
                                                                        ()
                                                                        ())
                                                                      #(ribcage
                                                                        #(x)
                                                                        #((top))
                                                                        #("i")))
                                                                     (hygiene
                                                                       guile))
                                                                  (list binding1408)
                                                                  body1407))
                                                          tmp1406)
                                                   (syntax-violation
                                                     #f
                                                     "source expression failed to match any pattern"
                                                     tmp1405)))
                                               ($sc-dispatch
                                                 tmp1405
                                                 '(any any))))
                                            (list (f1400 (cdr bindings1401))
                                                  (car bindings1401)))))))
                         (f1400 (map list x1396 v1397))))
                     tmp1388)
              (syntax-violation
                #f
                "source expression failed to match any pattern"
                tmp1387)))
          ($sc-dispatch
            tmp1387
            '(any #(each (any any)) any . each-any))))
       x1386))))

(define do
  (make-extended-syncase-macro
    (module-ref (current-module) (quote do))
    'macro
    (lambda (orig-x1409)
      ((lambda (tmp1410)
         ((lambda (tmp1411)
            (if tmp1411
              (apply (lambda (_1412
                              var1413
                              init1414
                              step1415
                              e01416
                              e11417
                              c1418)
                       ((lambda (tmp1419)
                          ((lambda (tmp1420)
                             (if tmp1420
                               (apply (lambda (step1421)
                                        ((lambda (tmp1422)
                                           ((lambda (tmp1423)
                                              (if tmp1423
                                                (apply (lambda ()
                                                         (list '#(syntax-object
                                                                  let
                                                                  ((top)
                                                                   #(ribcage
                                                                     #(step)
                                                                     #((top))
                                                                     #("i"))
                                                                   #(ribcage
                                                                     #(_
                                                                       var
                                                                       init
                                                                       step
                                                                       e0
                                                                       e1
                                                                       c)
                                                                     #((top)
                                                                       (top)
                                                                       (top)
                                                                       (top)
                                                                       (top)
                                                                       (top)
                                                                       (top))
                                                                     #("i"
                                                                       "i"
                                                                       "i"
                                                                       "i"
                                                                       "i"
                                                                       "i"
                                                                       "i"))
                                                                   #(ribcage
                                                                     ()
                                                                     ()
                                                                     ())
                                                                   #(ribcage
                                                                     #(orig-x)
                                                                     #((top))
                                                                     #("i")))
                                                                  (hygiene
                                                                    guile))
                                                               '#(syntax-object
                                                                  doloop
                                                                  ((top)
                                                                   #(ribcage
                                                                     #(step)
                                                                     #((top))
                                                                     #("i"))
                                                                   #(ribcage
                                                                     #(_
                                                                       var
                                                                       init
                                                                       step
                                                                       e0
                                                                       e1
                                                                       c)
                                                                     #((top)
                                                                       (top)
                                                                       (top)
                                                                       (top)
                                                                       (top)
                                                                       (top)
                                                                       (top))
                                                                     #("i"
                                                                       "i"
                                                                       "i"
                                                                       "i"
                                                                       "i"
                                                                       "i"
                                                                       "i"))
                                                                   #(ribcage
                                                                     ()
                                                                     ()
                                                                     ())
                                                                   #(ribcage
                                                                     #(orig-x)
                                                                     #((top))
                                                                     #("i")))
                                                                  (hygiene
                                                                    guile))
                                                               (map list
                                                                    var1413
                                                                    init1414)
                                                               (list '#(syntax-object
                                                                        if
                                                                        ((top)
                                                                         #(ribcage
                                                                           #(step)
                                                                           #((top))
                                                                           #("i"))
                                                                         #(ribcage
                                                                           #(_
                                                                             var
                                                                             init
                                                                             step
                                                                             e0
                                                                             e1
                                                                             c)
                                                                           #((top)
                                                                             (top)
                                                                             (top)
                                                                             (top)
                                                                             (top)
                                                                             (top)
                                                                             (top))
                                                                           #("i"
                                                                             "i"
                                                                             "i"
                                                                             "i"
                                                                             "i"
                                                                             "i"
                                                                             "i"))
                                                                         #(ribcage
                                                                           ()
                                                                           ()
                                                                           ())
                                                                         #(ribcage
                                                                           #(orig-x)
                                                                           #((top))
                                                                           #("i")))
                                                                        (hygiene
                                                                          guile))
                                                                     (list '#(syntax-object
                                                                              not
                                                                              ((top)
                                                                               #(ribcage
                                                                                 #(step)
                                                                                 #((top))
                                                                                 #("i"))
                                                                               #(ribcage
                                                                                 #(_
                                                                                   var
                                                                                   init
                                                                                   step
                                                                                   e0
                                                                                   e1
                                                                                   c)
                                                                                 #((top)
                                                                                   (top)
                                                                                   (top)
                                                                                   (top)
                                                                                   (top)
                                                                                   (top)
                                                                                   (top))
                                                                                 #("i"
                                                                                   "i"
                                                                                   "i"
                                                                                   "i"
                                                                                   "i"
                                                                                   "i"
                                                                                   "i"))
                                                                               #(ribcage
                                                                                 ()
                                                                                 ()
                                                                                 ())
                                                                               #(ribcage
                                                                                 #(orig-x)
                                                                                 #((top))
                                                                                 #("i")))
                                                                              (hygiene
                                                                                guile))
                                                                           e01416)
                                                                     (cons '#(syntax-object
                                                                              begin
                                                                              ((top)
                                                                               #(ribcage
                                                                                 #(step)
                                                                                 #((top))
                                                                                 #("i"))
                                                                               #(ribcage
                                                                                 #(_
                                                                                   var
                                                                                   init
                                                                                   step
                                                                                   e0
                                                                                   e1
                                                                                   c)
                                                                                 #((top)
                                                                                   (top)
                                                                                   (top)
                                                                                   (top)
                                                                                   (top)
                                                                                   (top)
                                                                                   (top))
                                                                                 #("i"
                                                                                   "i"
                                                                                   "i"
                                                                                   "i"
                                                                                   "i"
                                                                                   "i"
                                                                                   "i"))
                                                                               #(ribcage
                                                                                 ()
                                                                                 ()
                                                                                 ())
                                                                               #(ribcage
                                                                                 #(orig-x)
                                                                                 #((top))
                                                                                 #("i")))
                                                                              (hygiene
                                                                                guile))
                                                                           (append
                                                                             c1418
                                                                             (list (cons '#(syntax-object
                                                                                            doloop
                                                                                            ((top)
                                                                                             #(ribcage
                                                                                               #(step)
                                                                                               #((top))
                                                                                               #("i"))
                                                                                             #(ribcage
                                                                                               #(_
                                                                                                 var
                                                                                                 init
                                                                                                 step
                                                                                                 e0
                                                                                                 e1
                                                                                                 c)
                                                                                               #((top)
                                                                                                 (top)
                                                                                                 (top)
                                                                                                 (top)
                                                                                                 (top)
                                                                                                 (top)
                                                                                                 (top))
                                                                                               #("i"
                                                                                                 "i"
                                                                                                 "i"
                                                                                                 "i"
                                                                                                 "i"
                                                                                                 "i"
                                                                                                 "i"))
                                                                                             #(ribcage
                                                                                               ()
                                                                                               ()
                                                                                               ())
                                                                                             #(ribcage
                                                                                               #(orig-x)
                                                                                               #((top))
                                                                                               #("i")))
                                                                                            (hygiene
                                                                                              guile))
                                                                                         step1421)))))))
                                                       tmp1423)
                                                ((lambda (tmp1428)
                                                   (if tmp1428
                                                     (apply (lambda (e11429
                                                                     e21430)
                                                              (list '#(syntax-object
                                                                       let
                                                                       ((top)
                                                                        #(ribcage
                                                                          #(e1
                                                                            e2)
                                                                          #((top)
                                                                            (top))
                                                                          #("i"
                                                                            "i"))
                                                                        #(ribcage
                                                                          #(step)
                                                                          #((top))
                                                                          #("i"))
                                                                        #(ribcage
                                                                          #(_
                                                                            var
                                                                            init
                                                                            step
                                                                            e0
                                                                            e1
                                                                            c)
                                                                          #((top)
                                                                            (top)
                                                                            (top)
                                                                            (top)
                                                                            (top)
                                                                            (top)
                                                                            (top))
                                                                          #("i"
                                                                            "i"
                                                                            "i"
                                                                            "i"
                                                                            "i"
                                                                            "i"
                                                                            "i"))
                                                                        #(ribcage
                                                                          ()
                                                                          ()
                                                                          ())
                                                                        #(ribcage
                                                                          #(orig-x)
                                                                          #((top))
                                                                          #("i")))
                                                                       (hygiene
                                                                         guile))
                                                                    '#(syntax-object
                                                                       doloop
                                                                       ((top)
                                                                        #(ribcage
                                                                          #(e1
                                                                            e2)
                                                                          #((top)
                                                                            (top))
                                                                          #("i"
                                                                            "i"))
                                                                        #(ribcage
                                                                          #(step)
                                                                          #((top))
                                                                          #("i"))
                                                                        #(ribcage
                                                                          #(_
                                                                            var
                                                                            init
                                                                            step
                                                                            e0
                                                                            e1
                                                                            c)
                                                                          #((top)
                                                                            (top)
                                                                            (top)
                                                                            (top)
                                                                            (top)
                                                                            (top)
                                                                            (top))
                                                                          #("i"
                                                                            "i"
                                                                            "i"
                                                                            "i"
                                                                            "i"
                                                                            "i"
                                                                            "i"))
                                                                        #(ribcage
                                                                          ()
                                                                          ()
                                                                          ())
                                                                        #(ribcage
                                                                          #(orig-x)
                                                                          #((top))
                                                                          #("i")))
                                                                       (hygiene
                                                                         guile))
                                                                    (map list
                                                                         var1413
                                                                         init1414)
                                                                    (list '#(syntax-object
                                                                             if
                                                                             ((top)
                                                                              #(ribcage
                                                                                #(e1
                                                                                  e2)
                                                                                #((top)
                                                                                  (top))
                                                                                #("i"
                                                                                  "i"))
                                                                              #(ribcage
                                                                                #(step)
                                                                                #((top))
                                                                                #("i"))
                                                                              #(ribcage
                                                                                #(_
                                                                                  var
                                                                                  init
                                                                                  step
                                                                                  e0
                                                                                  e1
                                                                                  c)
                                                                                #((top)
                                                                                  (top)
                                                                                  (top)
                                                                                  (top)
                                                                                  (top)
                                                                                  (top)
                                                                                  (top))
                                                                                #("i"
                                                                                  "i"
                                                                                  "i"
                                                                                  "i"
                                                                                  "i"
                                                                                  "i"
                                                                                  "i"))
                                                                              #(ribcage
                                                                                ()
                                                                                ()
                                                                                ())
                                                                              #(ribcage
                                                                                #(orig-x)
                                                                                #((top))
                                                                                #("i")))
                                                                             (hygiene
                                                                               guile))
                                                                          e01416
                                                                          (cons '#(syntax-object
                                                                                   begin
                                                                                   ((top)
                                                                                    #(ribcage
                                                                                      #(e1
                                                                                        e2)
                                                                                      #((top)
                                                                                        (top))
                                                                                      #("i"
                                                                                        "i"))
                                                                                    #(ribcage
                                                                                      #(step)
                                                                                      #((top))
                                                                                      #("i"))
                                                                                    #(ribcage
                                                                                      #(_
                                                                                        var
                                                                                        init
                                                                                        step
                                                                                        e0
                                                                                        e1
                                                                                        c)
                                                                                      #((top)
                                                                                        (top)
                                                                                        (top)
                                                                                        (top)
                                                                                        (top)
                                                                                        (top)
                                                                                        (top))
                                                                                      #("i"
                                                                                        "i"
                                                                                        "i"
                                                                                        "i"
                                                                                        "i"
                                                                                        "i"
                                                                                        "i"))
                                                                                    #(ribcage
                                                                                      ()
                                                                                      ()
                                                                                      ())
                                                                                    #(ribcage
                                                                                      #(orig-x)
                                                                                      #((top))
                                                                                      #("i")))
                                                                                   (hygiene
                                                                                     guile))
                                                                                (cons e11429
                                                                                      e21430))
                                                                          (cons '#(syntax-object
                                                                                   begin
                                                                                   ((top)
                                                                                    #(ribcage
                                                                                      #(e1
                                                                                        e2)
                                                                                      #((top)
                                                                                        (top))
                                                                                      #("i"
                                                                                        "i"))
                                                                                    #(ribcage
                                                                                      #(step)
                                                                                      #((top))
                                                                                      #("i"))
                                                                                    #(ribcage
                                                                                      #(_
                                                                                        var
                                                                                        init
                                                                                        step
                                                                                        e0
                                                                                        e1
                                                                                        c)
                                                                                      #((top)
                                                                                        (top)
                                                                                        (top)
                                                                                        (top)
                                                                                        (top)
                                                                                        (top)
                                                                                        (top))
                                                                                      #("i"
                                                                                        "i"
                                                                                        "i"
                                                                                        "i"
                                                                                        "i"
                                                                                        "i"
                                                                                        "i"))
                                                                                    #(ribcage
                                                                                      ()
                                                                                      ()
                                                                                      ())
                                                                                    #(ribcage
                                                                                      #(orig-x)
                                                                                      #((top))
                                                                                      #("i")))
                                                                                   (hygiene
                                                                                     guile))
                                                                                (append
                                                                                  c1418
                                                                                  (list (cons '#(syntax-object
                                                                                                 doloop
                                                                                                 ((top)
                                                                                                  #(ribcage
                                                                                                    #(e1
                                                                                                      e2)
                                                                                                    #((top)
                                                                                                      (top))
                                                                                                    #("i"
                                                                                                      "i"))
                                                                                                  #(ribcage
                                                                                                    #(step)
                                                                                                    #((top))
                                                                                                    #("i"))
                                                                                                  #(ribcage
                                                                                                    #(_
                                                                                                      var
                                                                                                      init
                                                                                                      step
                                                                                                      e0
                                                                                                      e1
                                                                                                      c)
                                                                                                    #((top)
                                                                                                      (top)
                                                                                                      (top)
                                                                                                      (top)
                                                                                                      (top)
                                                                                                      (top)
                                                                                                      (top))
                                                                                                    #("i"
                                                                                                      "i"
                                                                                                      "i"
                                                                                                      "i"
                                                                                                      "i"
                                                                                                      "i"
                                                                                                      "i"))
                                                                                                  #(ribcage
                                                                                                    ()
                                                                                                    ()
                                                                                                    ())
                                                                                                  #(ribcage
                                                                                                    #(orig-x)
                                                                                                    #((top))
                                                                                                    #("i")))
                                                                                                 (hygiene
                                                                                                   guile))
                                                                                              step1421)))))))
                                                            tmp1428)
                                                     (syntax-violation
                                                       #f
                                                       "source expression failed to match any pattern"
                                                       tmp1422)))
                                                 ($sc-dispatch
                                                   tmp1422
                                                   '(any . each-any)))))
                                            ($sc-dispatch tmp1422 (quote ()))))
                                         e11417))
                                      tmp1420)
                               (syntax-violation
                                 #f
                                 "source expression failed to match any pattern"
                                 tmp1419)))
                           ($sc-dispatch tmp1419 (quote each-any))))
                        (map (lambda (v1437 s1438)
                               ((lambda (tmp1439)
                                  ((lambda (tmp1440)
                                     (if tmp1440
                                       (apply (lambda () v1437) tmp1440)
                                       ((lambda (tmp1441)
                                          (if tmp1441
                                            (apply (lambda (e1442) e1442)
                                                   tmp1441)
                                            ((lambda (_1443)
                                               (syntax-violation
                                                 'do
                                                 "bad step expression"
                                                 orig-x1409
                                                 s1438))
                                             tmp1439)))
                                        ($sc-dispatch tmp1439 (quote (any))))))
                                   ($sc-dispatch tmp1439 (quote ()))))
                                s1438))
                             var1413
                             step1415)))
                     tmp1411)
              (syntax-violation
                #f
                "source expression failed to match any pattern"
                tmp1410)))
          ($sc-dispatch
            tmp1410
            '(any #(each (any any . any))
                  (any . each-any)
                  .
                  each-any))))
       orig-x1409))))

(define quasiquote
  (make-extended-syncase-macro
    (module-ref (current-module) (quote quasiquote))
    'macro
    (letrec ((quasicons1446
               (lambda (x1450 y1451)
                 ((lambda (tmp1452)
                    ((lambda (tmp1453)
                       (if tmp1453
                         (apply (lambda (x1454 y1455)
                                  ((lambda (tmp1456)
                                     ((lambda (tmp1457)
                                        (if tmp1457
                                          (apply (lambda (dy1458)
                                                   ((lambda (tmp1459)
                                                      ((lambda (tmp1460)
                                                         (if tmp1460
                                                           (apply (lambda (dx1461)
                                                                    (list '#(syntax-object
                                                                             quote
                                                                             ((top)
                                                                              #(ribcage
                                                                                #(dx)
                                                                                #((top))
                                                                                #("i"))
                                                                              #(ribcage
                                                                                #(dy)
                                                                                #((top))
                                                                                #("i"))
                                                                              #(ribcage
                                                                                #(x
                                                                                  y)
                                                                                #((top)
                                                                                  (top))
                                                                                #("i"
                                                                                  "i"))
                                                                              #(ribcage
                                                                                ()
                                                                                ()
                                                                                ())
                                                                              #(ribcage
                                                                                ()
                                                                                ()
                                                                                ())
                                                                              #(ribcage
                                                                                #(x
                                                                                  y)
                                                                                #((top)
                                                                                  (top))
                                                                                #("i"
                                                                                  "i"))
                                                                              #(ribcage
                                                                                #(quasicons
                                                                                  quasiappend
                                                                                  quasivector
                                                                                  quasi)
                                                                                #((top)
                                                                                  (top)
                                                                                  (top)
                                                                                  (top))
                                                                                #("i"
                                                                                  "i"
                                                                                  "i"
                                                                                  "i")))
                                                                             (hygiene
                                                                               guile))
                                                                          (cons dx1461
                                                                                dy1458)))
                                                                  tmp1460)
                                                           ((lambda (_1462)
                                                              (if (null? dy1458)
                                                                (list '#(syntax-object
                                                                         list
                                                                         ((top)
                                                                          #(ribcage
                                                                            #(_)
                                                                            #((top))
                                                                            #("i"))
                                                                          #(ribcage
                                                                            #(dy)
                                                                            #((top))
                                                                            #("i"))
                                                                          #(ribcage
                                                                            #(x
                                                                              y)
                                                                            #((top)
                                                                              (top))
                                                                            #("i"
                                                                              "i"))
                                                                          #(ribcage
                                                                            ()
                                                                            ()
                                                                            ())
                                                                          #(ribcage
                                                                            ()
                                                                            ()
                                                                            ())
                                                                          #(ribcage
                                                                            #(x
                                                                              y)
                                                                            #((top)
                                                                              (top))
                                                                            #("i"
                                                                              "i"))
                                                                          #(ribcage
                                                                            #(quasicons
                                                                              quasiappend
                                                                              quasivector
                                                                              quasi)
                                                                            #((top)
                                                                              (top)
                                                                              (top)
                                                                              (top))
                                                                            #("i"
                                                                              "i"
                                                                              "i"
                                                                              "i")))
                                                                         (hygiene
                                                                           guile))
                                                                      x1454)
                                                                (list '#(syntax-object
                                                                         cons
                                                                         ((top)
                                                                          #(ribcage
                                                                            #(_)
                                                                            #((top))
                                                                            #("i"))
                                                                          #(ribcage
                                                                            #(dy)
                                                                            #((top))
                                                                            #("i"))
                                                                          #(ribcage
                                                                            #(x
                                                                              y)
                                                                            #((top)
                                                                              (top))
                                                                            #("i"
                                                                              "i"))
                                                                          #(ribcage
                                                                            ()
                                                                            ()
                                                                            ())
                                                                          #(ribcage
                                                                            ()
                                                                            ()
                                                                            ())
                                                                          #(ribcage
                                                                            #(x
                                                                              y)
                                                                            #((top)
                                                                              (top))
                                                                            #("i"
                                                                              "i"))
                                                                          #(ribcage
                                                                            #(quasicons
                                                                              quasiappend
                                                                              quasivector
                                                                              quasi)
                                                                            #((top)
                                                                              (top)
                                                                              (top)
                                                                              (top))
                                                                            #("i"
                                                                              "i"
                                                                              "i"
                                                                              "i")))
                                                                         (hygiene
                                                                           guile))
                                                                      x1454
                                                                      y1455)))
                                                            tmp1459)))
                                                       ($sc-dispatch
                                                         tmp1459
                                                         '(#(free-id
                                                             #(syntax-object
                                                               quote
                                                               ((top)
                                                                #(ribcage
                                                                  #(dy)
                                                                  #((top))
                                                                  #("i"))
                                                                #(ribcage
                                                                  #(x y)
                                                                  #((top)
                                                                    (top))
                                                                  #("i" "i"))
                                                                #(ribcage
                                                                  ()
                                                                  ()
                                                                  ())
                                                                #(ribcage
                                                                  ()
                                                                  ()
                                                                  ())
                                                                #(ribcage
                                                                  #(x y)
                                                                  #((top)
                                                                    (top))
                                                                  #("i" "i"))
                                                                #(ribcage
                                                                  #(quasicons
                                                                    quasiappend
                                                                    quasivector
                                                                    quasi)
                                                                  #((top)
                                                                    (top)
                                                                    (top)
                                                                    (top))
                                                                  #("i"
                                                                    "i"
                                                                    "i"
                                                                    "i")))
                                                               (hygiene
                                                                 guile)))
                                                           any))))
                                                    x1454))
                                                 tmp1457)
                                          ((lambda (tmp1463)
                                             (if tmp1463
                                               (apply (lambda (stuff1464)
                                                        (cons '#(syntax-object
                                                                 list
                                                                 ((top)
                                                                  #(ribcage
                                                                    #(stuff)
                                                                    #((top))
                                                                    #("i"))
                                                                  #(ribcage
                                                                    #(x y)
                                                                    #((top)
                                                                      (top))
                                                                    #("i" "i"))
                                                                  #(ribcage
                                                                    ()
                                                                    ()
                                                                    ())
                                                                  #(ribcage
                                                                    ()
                                                                    ()
                                                                    ())
                                                                  #(ribcage
                                                                    #(x y)
                                                                    #((top)
                                                                      (top))
                                                                    #("i" "i"))
                                                                  #(ribcage
                                                                    #(quasicons
                                                                      quasiappend
                                                                      quasivector
                                                                      quasi)
                                                                    #((top)
                                                                      (top)
                                                                      (top)
                                                                      (top))
                                                                    #("i"
                                                                      "i"
                                                                      "i"
                                                                      "i")))
                                                                 (hygiene
                                                                   guile))
                                                              (cons x1454
                                                                    stuff1464)))
                                                      tmp1463)
                                               ((lambda (else1465)
                                                  (list '#(syntax-object
                                                           cons
                                                           ((top)
                                                            #(ribcage
                                                              #(else)
                                                              #((top))
                                                              #("i"))
                                                            #(ribcage
                                                              #(x y)
                                                              #((top) (top))
                                                              #("i" "i"))
                                                            #(ribcage () () ())
                                                            #(ribcage () () ())
                                                            #(ribcage
                                                              #(x y)
                                                              #((top) (top))
                                                              #("i" "i"))
                                                            #(ribcage
                                                              #(quasicons
                                                                quasiappend
                                                                quasivector
                                                                quasi)
                                                              #((top)
                                                                (top)
                                                                (top)
                                                                (top))
                                                              #("i"
                                                                "i"
                                                                "i"
                                                                "i")))
                                                           (hygiene guile))
                                                        x1454
                                                        y1455))
                                                tmp1456)))
                                           ($sc-dispatch
                                             tmp1456
                                             '(#(free-id
                                                 #(syntax-object
                                                   list
                                                   ((top)
                                                    #(ribcage
                                                      #(x y)
                                                      #((top) (top))
                                                      #("i" "i"))
                                                    #(ribcage () () ())
                                                    #(ribcage () () ())
                                                    #(ribcage
                                                      #(x y)
                                                      #((top) (top))
                                                      #("i" "i"))
                                                    #(ribcage
                                                      #(quasicons
                                                        quasiappend
                                                        quasivector
                                                        quasi)
                                                      #((top)
                                                        (top)
                                                        (top)
                                                        (top))
                                                      #("i" "i" "i" "i")))
                                                   (hygiene guile)))
                                               .
                                               any)))))
                                      ($sc-dispatch
                                        tmp1456
                                        '(#(free-id
                                            #(syntax-object
                                              quote
                                              ((top)
                                               #(ribcage
                                                 #(x y)
                                                 #((top) (top))
                                                 #("i" "i"))
                                               #(ribcage () () ())
                                               #(ribcage () () ())
                                               #(ribcage
                                                 #(x y)
                                                 #((top) (top))
                                                 #("i" "i"))
                                               #(ribcage
                                                 #(quasicons
                                                   quasiappend
                                                   quasivector
                                                   quasi)
                                                 #((top) (top) (top) (top))
                                                 #("i" "i" "i" "i")))
                                              (hygiene guile)))
                                          any))))
                                   y1455))
                                tmp1453)
                         (syntax-violation
                           #f
                           "source expression failed to match any pattern"
                           tmp1452)))
                     ($sc-dispatch tmp1452 (quote (any any)))))
                  (list x1450 y1451))))
             (quasiappend1447
               (lambda (x1466 y1467)
                 ((lambda (tmp1468)
                    ((lambda (tmp1469)
                       (if tmp1469
                         (apply (lambda (x1470 y1471)
                                  ((lambda (tmp1472)
                                     ((lambda (tmp1473)
                                        (if tmp1473
                                          (apply (lambda () x1470) tmp1473)
                                          ((lambda (_1474)
                                             (list '#(syntax-object
                                                      append
                                                      ((top)
                                                       #(ribcage
                                                         #(_)
                                                         #((top))
                                                         #("i"))
                                                       #(ribcage
                                                         #(x y)
                                                         #((top) (top))
                                                         #("i" "i"))
                                                       #(ribcage () () ())
                                                       #(ribcage () () ())
                                                       #(ribcage
                                                         #(x y)
                                                         #((top) (top))
                                                         #("i" "i"))
                                                       #(ribcage
                                                         #(quasicons
                                                           quasiappend
                                                           quasivector
                                                           quasi)
                                                         #((top)
                                                           (top)
                                                           (top)
                                                           (top))
                                                         #("i" "i" "i" "i")))
                                                      (hygiene guile))
                                                   x1470
                                                   y1471))
                                           tmp1472)))
                                      ($sc-dispatch
                                        tmp1472
                                        '(#(free-id
                                            #(syntax-object
                                              quote
                                              ((top)
                                               #(ribcage
                                                 #(x y)
                                                 #((top) (top))
                                                 #("i" "i"))
                                               #(ribcage () () ())
                                               #(ribcage () () ())
                                               #(ribcage
                                                 #(x y)
                                                 #((top) (top))
                                                 #("i" "i"))
                                               #(ribcage
                                                 #(quasicons
                                                   quasiappend
                                                   quasivector
                                                   quasi)
                                                 #((top) (top) (top) (top))
                                                 #("i" "i" "i" "i")))
                                              (hygiene guile)))
                                          ()))))
                                   y1471))
                                tmp1469)
                         (syntax-violation
                           #f
                           "source expression failed to match any pattern"
                           tmp1468)))
                     ($sc-dispatch tmp1468 (quote (any any)))))
                  (list x1466 y1467))))
             (quasivector1448
               (lambda (x1475)
                 ((lambda (tmp1476)
                    ((lambda (x1477)
                       ((lambda (tmp1478)
                          ((lambda (tmp1479)
                             (if tmp1479
                               (apply (lambda (x1480)
                                        (list '#(syntax-object
                                                 quote
                                                 ((top)
                                                  #(ribcage
                                                    #(x)
                                                    #((top))
                                                    #("i"))
                                                  #(ribcage
                                                    #(x)
                                                    #((top))
                                                    #("i"))
                                                  #(ribcage () () ())
                                                  #(ribcage () () ())
                                                  #(ribcage
                                                    #(x)
                                                    #((top))
                                                    #("i"))
                                                  #(ribcage
                                                    #(quasicons
                                                      quasiappend
                                                      quasivector
                                                      quasi)
                                                    #((top) (top) (top) (top))
                                                    #("i" "i" "i" "i")))
                                                 (hygiene guile))
                                              (list->vector x1480)))
                                      tmp1479)
                               ((lambda (tmp1482)
                                  (if tmp1482
                                    (apply (lambda (x1483)
                                             (cons '#(syntax-object
                                                      vector
                                                      ((top)
                                                       #(ribcage
                                                         #(x)
                                                         #((top))
                                                         #("i"))
                                                       #(ribcage
                                                         #(x)
                                                         #((top))
                                                         #("i"))
                                                       #(ribcage () () ())
                                                       #(ribcage () () ())
                                                       #(ribcage
                                                         #(x)
                                                         #((top))
                                                         #("i"))
                                                       #(ribcage
                                                         #(quasicons
                                                           quasiappend
                                                           quasivector
                                                           quasi)
                                                         #((top)
                                                           (top)
                                                           (top)
                                                           (top))
                                                         #("i" "i" "i" "i")))
                                                      (hygiene guile))
                                                   x1483))
                                           tmp1482)
                                    ((lambda (_1485)
                                       (list '#(syntax-object
                                                list->vector
                                                ((top)
                                                 #(ribcage
                                                   #(_)
                                                   #((top))
                                                   #("i"))
                                                 #(ribcage
                                                   #(x)
                                                   #((top))
                                                   #("i"))
                                                 #(ribcage () () ())
                                                 #(ribcage () () ())
                                                 #(ribcage
                                                   #(x)
                                                   #((top))
                                                   #("i"))
                                                 #(ribcage
                                                   #(quasicons
                                                     quasiappend
                                                     quasivector
                                                     quasi)
                                                   #((top) (top) (top) (top))
                                                   #("i" "i" "i" "i")))
                                                (hygiene guile))
                                             x1477))
                                     tmp1478)))
                                ($sc-dispatch
                                  tmp1478
                                  '(#(free-id
                                      #(syntax-object
                                        list
                                        ((top)
                                         #(ribcage #(x) #((top)) #("i"))
                                         #(ribcage () () ())
                                         #(ribcage () () ())
                                         #(ribcage #(x) #((top)) #("i"))
                                         #(ribcage
                                           #(quasicons
                                             quasiappend
                                             quasivector
                                             quasi)
                                           #((top) (top) (top) (top))
                                           #("i" "i" "i" "i")))
                                        (hygiene guile)))
                                    .
                                    each-any)))))
                           ($sc-dispatch
                             tmp1478
                             '(#(free-id
                                 #(syntax-object
                                   quote
                                   ((top)
                                    #(ribcage #(x) #((top)) #("i"))
                                    #(ribcage () () ())
                                    #(ribcage () () ())
                                    #(ribcage #(x) #((top)) #("i"))
                                    #(ribcage
                                      #(quasicons
                                        quasiappend
                                        quasivector
                                        quasi)
                                      #((top) (top) (top) (top))
                                      #("i" "i" "i" "i")))
                                   (hygiene guile)))
                               each-any))))
                        x1477))
                     tmp1476))
                  x1475)))
             (quasi1449
               (lambda (p1486 lev1487)
                 ((lambda (tmp1488)
                    ((lambda (tmp1489)
                       (if tmp1489
                         (apply (lambda (p1490)
                                  (if (= lev1487 0)
                                    p1490
                                    (quasicons1446
                                      '(#(syntax-object
                                          quote
                                          ((top)
                                           #(ribcage #(p) #((top)) #("i"))
                                           #(ribcage () () ())
                                           #(ribcage
                                             #(p lev)
                                             #((top) (top))
                                             #("i" "i"))
                                           #(ribcage
                                             #(quasicons
                                               quasiappend
                                               quasivector
                                               quasi)
                                             #((top) (top) (top) (top))
                                             #("i" "i" "i" "i")))
                                          (hygiene guile))
                                        #(syntax-object
                                          unquote
                                          ((top)
                                           #(ribcage #(p) #((top)) #("i"))
                                           #(ribcage () () ())
                                           #(ribcage
                                             #(p lev)
                                             #((top) (top))
                                             #("i" "i"))
                                           #(ribcage
                                             #(quasicons
                                               quasiappend
                                               quasivector
                                               quasi)
                                             #((top) (top) (top) (top))
                                             #("i" "i" "i" "i")))
                                          (hygiene guile)))
                                      (quasi1449 (list p1490) (- lev1487 1)))))
                                tmp1489)
                         ((lambda (tmp1491)
                            (if (if tmp1491
                                  (apply (lambda (args1492) (= lev1487 0))
                                         tmp1491)
                                  #f)
                              (apply (lambda (args1493)
                                       (syntax-violation
                                         'unquote
                                         "unquote takes exactly one argument"
                                         p1486
                                         (cons '#(syntax-object
                                                  unquote
                                                  ((top)
                                                   #(ribcage
                                                     #(args)
                                                     #((top))
                                                     #("i"))
                                                   #(ribcage () () ())
                                                   #(ribcage
                                                     #(p lev)
                                                     #((top) (top))
                                                     #("i" "i"))
                                                   #(ribcage
                                                     #(quasicons
                                                       quasiappend
                                                       quasivector
                                                       quasi)
                                                     #((top) (top) (top) (top))
                                                     #("i" "i" "i" "i")))
                                                  (hygiene guile))
                                               args1493)))
                                     tmp1491)
                              ((lambda (tmp1494)
                                 (if tmp1494
                                   (apply (lambda (p1495 q1496)
                                            (if (= lev1487 0)
                                              (quasiappend1447
                                                p1495
                                                (quasi1449 q1496 lev1487))
                                              (quasicons1446
                                                (quasicons1446
                                                  '(#(syntax-object
                                                      quote
                                                      ((top)
                                                       #(ribcage
                                                         #(p q)
                                                         #((top) (top))
                                                         #("i" "i"))
                                                       #(ribcage () () ())
                                                       #(ribcage
                                                         #(p lev)
                                                         #((top) (top))
                                                         #("i" "i"))
                                                       #(ribcage
                                                         #(quasicons
                                                           quasiappend
                                                           quasivector
                                                           quasi)
                                                         #((top)
                                                           (top)
                                                           (top)
                                                           (top))
                                                         #("i" "i" "i" "i")))
                                                      (hygiene guile))
                                                    #(syntax-object
                                                      unquote-splicing
                                                      ((top)
                                                       #(ribcage
                                                         #(p q)
                                                         #((top) (top))
                                                         #("i" "i"))
                                                       #(ribcage () () ())
                                                       #(ribcage
                                                         #(p lev)
                                                         #((top) (top))
                                                         #("i" "i"))
                                                       #(ribcage
                                                         #(quasicons
                                                           quasiappend
                                                           quasivector
                                                           quasi)
                                                         #((top)
                                                           (top)
                                                           (top)
                                                           (top))
                                                         #("i" "i" "i" "i")))
                                                      (hygiene guile)))
                                                  (quasi1449
                                                    (list p1495)
                                                    (- lev1487 1)))
                                                (quasi1449 q1496 lev1487))))
                                          tmp1494)
                                   ((lambda (tmp1497)
                                      (if (if tmp1497
                                            (apply (lambda (args1498 q1499)
                                                     (= lev1487 0))
                                                   tmp1497)
                                            #f)
                                        (apply (lambda (args1500 q1501)
                                                 (syntax-violation
                                                   'unquote-splicing
                                                   "unquote-splicing takes exactly one argument"
                                                   p1486
                                                   (cons '#(syntax-object
                                                            unquote-splicing
                                                            ((top)
                                                             #(ribcage
                                                               #(args q)
                                                               #((top) (top))
                                                               #("i" "i"))
                                                             #(ribcage
                                                               ()
                                                               ()
                                                               ())
                                                             #(ribcage
                                                               #(p lev)
                                                               #((top) (top))
                                                               #("i" "i"))
                                                             #(ribcage
                                                               #(quasicons
                                                                 quasiappend
                                                                 quasivector
                                                                 quasi)
                                                               #((top)
                                                                 (top)
                                                                 (top)
                                                                 (top))
                                                               #("i"
                                                                 "i"
                                                                 "i"
                                                                 "i")))
                                                            (hygiene guile))
                                                         args1500)))
                                               tmp1497)
                                        ((lambda (tmp1502)
                                           (if tmp1502
                                             (apply (lambda (p1503)
                                                      (quasicons1446
                                                        '(#(syntax-object
                                                            quote
                                                            ((top)
                                                             #(ribcage
                                                               #(p)
                                                               #((top))
                                                               #("i"))
                                                             #(ribcage
                                                               ()
                                                               ()
                                                               ())
                                                             #(ribcage
                                                               #(p lev)
                                                               #((top) (top))
                                                               #("i" "i"))
                                                             #(ribcage
                                                               #(quasicons
                                                                 quasiappend
                                                                 quasivector
                                                                 quasi)
                                                               #((top)
                                                                 (top)
                                                                 (top)
                                                                 (top))
                                                               #("i"
                                                                 "i"
                                                                 "i"
                                                                 "i")))
                                                            (hygiene guile))
                                                          #(syntax-object
                                                            quasiquote
                                                            ((top)
                                                             #(ribcage
                                                               #(p)
                                                               #((top))
                                                               #("i"))
                                                             #(ribcage
                                                               ()
                                                               ()
                                                               ())
                                                             #(ribcage
                                                               #(p lev)
                                                               #((top) (top))
                                                               #("i" "i"))
                                                             #(ribcage
                                                               #(quasicons
                                                                 quasiappend
                                                                 quasivector
                                                                 quasi)
                                                               #((top)
                                                                 (top)
                                                                 (top)
                                                                 (top))
                                                               #("i"
                                                                 "i"
                                                                 "i"
                                                                 "i")))
                                                            (hygiene guile)))
                                                        (quasi1449
                                                          (list p1503)
                                                          (+ lev1487 1))))
                                                    tmp1502)
                                             ((lambda (tmp1504)
                                                (if tmp1504
                                                  (apply (lambda (p1505 q1506)
                                                           (quasicons1446
                                                             (quasi1449
                                                               p1505
                                                               lev1487)
                                                             (quasi1449
                                                               q1506
                                                               lev1487)))
                                                         tmp1504)
                                                  ((lambda (tmp1507)
                                                     (if tmp1507
                                                       (apply (lambda (x1508)
                                                                (quasivector1448
                                                                  (quasi1449
                                                                    x1508
                                                                    lev1487)))
                                                              tmp1507)
                                                       ((lambda (p1510)
                                                          (list '#(syntax-object
                                                                   quote
                                                                   ((top)
                                                                    #(ribcage
                                                                      #(p)
                                                                      #((top))
                                                                      #("i"))
                                                                    #(ribcage
                                                                      ()
                                                                      ()
                                                                      ())
                                                                    #(ribcage
                                                                      #(p lev)
                                                                      #((top)
                                                                        (top))
                                                                      #("i"
                                                                        "i"))
                                                                    #(ribcage
                                                                      #(quasicons
                                                                        quasiappend
                                                                        quasivector
                                                                        quasi)
                                                                      #((top)
                                                                        (top)
                                                                        (top)
                                                                        (top))
                                                                      #("i"
                                                                        "i"
                                                                        "i"
                                                                        "i")))
                                                                   (hygiene
                                                                     guile))
                                                                p1510))
                                                        tmp1488)))
                                                   ($sc-dispatch
                                                     tmp1488
                                                     '#(vector each-any)))))
                                              ($sc-dispatch
                                                tmp1488
                                                '(any . any)))))
                                         ($sc-dispatch
                                           tmp1488
                                           '(#(free-id
                                               #(syntax-object
                                                 quasiquote
                                                 ((top)
                                                  #(ribcage () () ())
                                                  #(ribcage
                                                    #(p lev)
                                                    #((top) (top))
                                                    #("i" "i"))
                                                  #(ribcage
                                                    #(quasicons
                                                      quasiappend
                                                      quasivector
                                                      quasi)
                                                    #((top) (top) (top) (top))
                                                    #("i" "i" "i" "i")))
                                                 (hygiene guile)))
                                             any)))))
                                    ($sc-dispatch
                                      tmp1488
                                      '((#(free-id
                                           #(syntax-object
                                             unquote-splicing
                                             ((top)
                                              #(ribcage () () ())
                                              #(ribcage
                                                #(p lev)
                                                #((top) (top))
                                                #("i" "i"))
                                              #(ribcage
                                                #(quasicons
                                                  quasiappend
                                                  quasivector
                                                  quasi)
                                                #((top) (top) (top) (top))
                                                #("i" "i" "i" "i")))
                                             (hygiene guile)))
                                         .
                                         any)
                                        .
                                        any)))))
                               ($sc-dispatch
                                 tmp1488
                                 '((#(free-id
                                      #(syntax-object
                                        unquote-splicing
                                        ((top)
                                         #(ribcage () () ())
                                         #(ribcage
                                           #(p lev)
                                           #((top) (top))
                                           #("i" "i"))
                                         #(ribcage
                                           #(quasicons
                                             quasiappend
                                             quasivector
                                             quasi)
                                           #((top) (top) (top) (top))
                                           #("i" "i" "i" "i")))
                                        (hygiene guile)))
                                    any)
                                   .
                                   any)))))
                          ($sc-dispatch
                            tmp1488
                            '(#(free-id
                                #(syntax-object
                                  unquote
                                  ((top)
                                   #(ribcage () () ())
                                   #(ribcage
                                     #(p lev)
                                     #((top) (top))
                                     #("i" "i"))
                                   #(ribcage
                                     #(quasicons quasiappend quasivector quasi)
                                     #((top) (top) (top) (top))
                                     #("i" "i" "i" "i")))
                                  (hygiene guile)))
                              .
                              any)))))
                     ($sc-dispatch
                       tmp1488
                       '(#(free-id
                           #(syntax-object
                             unquote
                             ((top)
                              #(ribcage () () ())
                              #(ribcage #(p lev) #((top) (top)) #("i" "i"))
                              #(ribcage
                                #(quasicons quasiappend quasivector quasi)
                                #((top) (top) (top) (top))
                                #("i" "i" "i" "i")))
                             (hygiene guile)))
                         any))))
                  p1486))))
      (lambda (x1511)
        ((lambda (tmp1512)
           ((lambda (tmp1513)
              (if tmp1513
                (apply (lambda (_1514 e1515) (quasi1449 e1515 0))
                       tmp1513)
                (syntax-violation
                  #f
                  "source expression failed to match any pattern"
                  tmp1512)))
            ($sc-dispatch tmp1512 (quote (any any)))))
         x1511)))))

(define include
  (make-syncase-macro
    'macro
    (lambda (x1516)
      (letrec ((read-file1517
                 (lambda (fn1518 k1519)
                   (let ((p1520 (open-input-file fn1518)))
                     (letrec ((f1521 (lambda (x1522)
                                       (if (eof-object? x1522)
                                         (begin
                                           (close-input-port p1520)
                                           '())
                                         (cons (datum->syntax k1519 x1522)
                                               (f1521 (read p1520)))))))
                       (f1521 (read p1520)))))))
        ((lambda (tmp1523)
           ((lambda (tmp1524)
              (if tmp1524
                (apply (lambda (k1525 filename1526)
                         (let ((fn1527 (syntax->datum filename1526)))
                           ((lambda (tmp1528)
                              ((lambda (tmp1529)
                                 (if tmp1529
                                   (apply (lambda (exp1530)
                                            (cons '#(syntax-object
                                                     begin
                                                     ((top)
                                                      #(ribcage
                                                        #(exp)
                                                        #((top))
                                                        #("i"))
                                                      #(ribcage () () ())
                                                      #(ribcage () () ())
                                                      #(ribcage
                                                        #(fn)
                                                        #((top))
                                                        #("i"))
                                                      #(ribcage
                                                        #(k filename)
                                                        #((top) (top))
                                                        #("i" "i"))
                                                      #(ribcage
                                                        (read-file)
                                                        ((top))
                                                        ("i"))
                                                      #(ribcage
                                                        #(x)
                                                        #((top))
                                                        #("i")))
                                                     (hygiene guile))
                                                  exp1530))
                                          tmp1529)
                                   (syntax-violation
                                     #f
                                     "source expression failed to match any pattern"
                                     tmp1528)))
                               ($sc-dispatch tmp1528 (quote each-any))))
                            (read-file1517 fn1527 k1525))))
                       tmp1524)
                (syntax-violation
                  #f
                  "source expression failed to match any pattern"
                  tmp1523)))
            ($sc-dispatch tmp1523 (quote (any any)))))
         x1516)))))

(define unquote
  (make-syncase-macro
    'macro
    (lambda (x1532)
      ((lambda (tmp1533)
         ((lambda (tmp1534)
            (if tmp1534
              (apply (lambda (_1535 e1536)
                       (syntax-violation
                         'unquote
                         "expression not valid outside of quasiquote"
                         x1532))
                     tmp1534)
              (syntax-violation
                #f
                "source expression failed to match any pattern"
                tmp1533)))
          ($sc-dispatch tmp1533 (quote (any any)))))
       x1532))))

(define unquote-splicing
  (make-syncase-macro
    'macro
    (lambda (x1537)
      ((lambda (tmp1538)
         ((lambda (tmp1539)
            (if tmp1539
              (apply (lambda (_1540 e1541)
                       (syntax-violation
                         'unquote-splicing
                         "expression not valid outside of quasiquote"
                         x1537))
                     tmp1539)
              (syntax-violation
                #f
                "source expression failed to match any pattern"
                tmp1538)))
          ($sc-dispatch tmp1538 (quote (any any)))))
       x1537))))

(define case
  (make-extended-syncase-macro
    (module-ref (current-module) (quote case))
    'macro
    (lambda (x1542)
      ((lambda (tmp1543)
         ((lambda (tmp1544)
            (if tmp1544
              (apply (lambda (_1545 e1546 m11547 m21548)
                       ((lambda (tmp1549)
                          ((lambda (body1550)
                             (list '#(syntax-object
                                      let
                                      ((top)
                                       #(ribcage #(body) #((top)) #("i"))
                                       #(ribcage
                                         #(_ e m1 m2)
                                         #((top) (top) (top) (top))
                                         #("i" "i" "i" "i"))
                                       #(ribcage () () ())
                                       #(ribcage #(x) #((top)) #("i")))
                                      (hygiene guile))
                                   (list (list '#(syntax-object
                                                  t
                                                  ((top)
                                                   #(ribcage
                                                     #(body)
                                                     #((top))
                                                     #("i"))
                                                   #(ribcage
                                                     #(_ e m1 m2)
                                                     #((top) (top) (top) (top))
                                                     #("i" "i" "i" "i"))
                                                   #(ribcage () () ())
                                                   #(ribcage
                                                     #(x)
                                                     #((top))
                                                     #("i")))
                                                  (hygiene guile))
                                               e1546))
                                   body1550))
                           tmp1549))
                        (letrec ((f1551 (lambda (clause1552 clauses1553)
                                          (if (null? clauses1553)
                                            ((lambda (tmp1555)
                                               ((lambda (tmp1556)
                                                  (if tmp1556
                                                    (apply (lambda (e11557
                                                                    e21558)
                                                             (cons '#(syntax-object
                                                                      begin
                                                                      ((top)
                                                                       #(ribcage
                                                                         #(e1
                                                                           e2)
                                                                         #((top)
                                                                           (top))
                                                                         #("i"
                                                                           "i"))
                                                                       #(ribcage
                                                                         ()
                                                                         ()
                                                                         ())
                                                                       #(ribcage
                                                                         #(f
                                                                           clause
                                                                           clauses)
                                                                         #((top)
                                                                           (top)
                                                                           (top))
                                                                         #("i"
                                                                           "i"
                                                                           "i"))
                                                                       #(ribcage
                                                                         #(_
                                                                           e
                                                                           m1
                                                                           m2)
                                                                         #((top)
                                                                           (top)
                                                                           (top)
                                                                           (top))
                                                                         #("i"
                                                                           "i"
                                                                           "i"
                                                                           "i"))
                                                                       #(ribcage
                                                                         ()
                                                                         ()
                                                                         ())
                                                                       #(ribcage
                                                                         #(x)
                                                                         #((top))
                                                                         #("i")))
                                                                      (hygiene
                                                                        guile))
                                                                   (cons e11557
                                                                         e21558)))
                                                           tmp1556)
                                                    ((lambda (tmp1560)
                                                       (if tmp1560
                                                         (apply (lambda (k1561
                                                                         e11562
                                                                         e21563)
                                                                  (list '#(syntax-object
                                                                           if
                                                                           ((top)
                                                                            #(ribcage
                                                                              #(k
                                                                                e1
                                                                                e2)
                                                                              #((top)
                                                                                (top)
                                                                                (top))
                                                                              #("i"
                                                                                "i"
                                                                                "i"))
                                                                            #(ribcage
                                                                              ()
                                                                              ()
                                                                              ())
                                                                            #(ribcage
                                                                              #(f
                                                                                clause
                                                                                clauses)
                                                                              #((top)
                                                                                (top)
                                                                                (top))
                                                                              #("i"
                                                                                "i"
                                                                                "i"))
                                                                            #(ribcage
                                                                              #(_
                                                                                e
                                                                                m1
                                                                                m2)
                                                                              #((top)
                                                                                (top)
                                                                                (top)
                                                                                (top))
                                                                              #("i"
                                                                                "i"
                                                                                "i"
                                                                                "i"))
                                                                            #(ribcage
                                                                              ()
                                                                              ()
                                                                              ())
                                                                            #(ribcage
                                                                              #(x)
                                                                              #((top))
                                                                              #("i")))
                                                                           (hygiene
                                                                             guile))
                                                                        (list '#(syntax-object
                                                                                 memv
                                                                                 ((top)
                                                                                  #(ribcage
                                                                                    #(k
                                                                                      e1
                                                                                      e2)
                                                                                    #((top)
                                                                                      (top)
                                                                                      (top))
                                                                                    #("i"
                                                                                      "i"
                                                                                      "i"))
                                                                                  #(ribcage
                                                                                    ()
                                                                                    ()
                                                                                    ())
                                                                                  #(ribcage
                                                                                    #(f
                                                                                      clause
                                                                                      clauses)
                                                                                    #((top)
                                                                                      (top)
                                                                                      (top))
                                                                                    #("i"
                                                                                      "i"
                                                                                      "i"))
                                                                                  #(ribcage
                                                                                    #(_
                                                                                      e
                                                                                      m1
                                                                                      m2)
                                                                                    #((top)
                                                                                      (top)
                                                                                      (top)
                                                                                      (top))
                                                                                    #("i"
                                                                                      "i"
                                                                                      "i"
                                                                                      "i"))
                                                                                  #(ribcage
                                                                                    ()
                                                                                    ()
                                                                                    ())
                                                                                  #(ribcage
                                                                                    #(x)
                                                                                    #((top))
                                                                                    #("i")))
                                                                                 (hygiene
                                                                                   guile))
                                                                              '#(syntax-object
                                                                                 t
                                                                                 ((top)
                                                                                  #(ribcage
                                                                                    #(k
                                                                                      e1
                                                                                      e2)
                                                                                    #((top)
                                                                                      (top)
                                                                                      (top))
                                                                                    #("i"
                                                                                      "i"
                                                                                      "i"))
                                                                                  #(ribcage
                                                                                    ()
                                                                                    ()
                                                                                    ())
                                                                                  #(ribcage
                                                                                    #(f
                                                                                      clause
                                                                                      clauses)
                                                                                    #((top)
                                                                                      (top)
                                                                                      (top))
                                                                                    #("i"
                                                                                      "i"
                                                                                      "i"))
                                                                                  #(ribcage
                                                                                    #(_
                                                                                      e
                                                                                      m1
                                                                                      m2)
                                                                                    #((top)
                                                                                      (top)
                                                                                      (top)
                                                                                      (top))
                                                                                    #("i"
                                                                                      "i"
                                                                                      "i"
                                                                                      "i"))
                                                                                  #(ribcage
                                                                                    ()
                                                                                    ()
                                                                                    ())
                                                                                  #(ribcage
                                                                                    #(x)
                                                                                    #((top))
                                                                                    #("i")))
                                                                                 (hygiene
                                                                                   guile))
                                                                              (list '#(syntax-object
                                                                                       quote
                                                                                       ((top)
                                                                                        #(ribcage
                                                                                          #(k
                                                                                            e1
                                                                                            e2)
                                                                                          #((top)
                                                                                            (top)
                                                                                            (top))
                                                                                          #("i"
                                                                                            "i"
                                                                                            "i"))
                                                                                        #(ribcage
                                                                                          ()
                                                                                          ()
                                                                                          ())
                                                                                        #(ribcage
                                                                                          #(f
                                                                                            clause
                                                                                            clauses)
                                                                                          #((top)
                                                                                            (top)
                                                                                            (top))
                                                                                          #("i"
                                                                                            "i"
                                                                                            "i"))
                                                                                        #(ribcage
                                                                                          #(_
                                                                                            e
                                                                                            m1
                                                                                            m2)
                                                                                          #((top)
                                                                                            (top)
                                                                                            (top)
                                                                                            (top))
                                                                                          #("i"
                                                                                            "i"
                                                                                            "i"
                                                                                            "i"))
                                                                                        #(ribcage
                                                                                          ()
                                                                                          ()
                                                                                          ())
                                                                                        #(ribcage
                                                                                          #(x)
                                                                                          #((top))
                                                                                          #("i")))
                                                                                       (hygiene
                                                                                         guile))
                                                                                    k1561))
                                                                        (cons '#(syntax-object
                                                                                 begin
                                                                                 ((top)
                                                                                  #(ribcage
                                                                                    #(k
                                                                                      e1
                                                                                      e2)
                                                                                    #((top)
                                                                                      (top)
                                                                                      (top))
                                                                                    #("i"
                                                                                      "i"
                                                                                      "i"))
                                                                                  #(ribcage
                                                                                    ()
                                                                                    ()
                                                                                    ())
                                                                                  #(ribcage
                                                                                    #(f
                                                                                      clause
                                                                                      clauses)
                                                                                    #((top)
                                                                                      (top)
                                                                                      (top))
                                                                                    #("i"
                                                                                      "i"
                                                                                      "i"))
                                                                                  #(ribcage
                                                                                    #(_
                                                                                      e
                                                                                      m1
                                                                                      m2)
                                                                                    #((top)
                                                                                      (top)
                                                                                      (top)
                                                                                      (top))
                                                                                    #("i"
                                                                                      "i"
                                                                                      "i"
                                                                                      "i"))
                                                                                  #(ribcage
                                                                                    ()
                                                                                    ()
                                                                                    ())
                                                                                  #(ribcage
                                                                                    #(x)
                                                                                    #((top))
                                                                                    #("i")))
                                                                                 (hygiene
                                                                                   guile))
                                                                              (cons e11562
                                                                                    e21563))))
                                                                tmp1560)
                                                         ((lambda (_1566)
                                                            (syntax-violation
                                                              'case
                                                              "bad clause"
                                                              x1542
                                                              clause1552))
                                                          tmp1555)))
                                                     ($sc-dispatch
                                                       tmp1555
                                                       '(each-any
                                                          any
                                                          .
                                                          each-any)))))
                                                ($sc-dispatch
                                                  tmp1555
                                                  '(#(free-id
                                                      #(syntax-object
                                                        else
                                                        ((top)
                                                         #(ribcage () () ())
                                                         #(ribcage
                                                           #(f clause clauses)
                                                           #((top) (top) (top))
                                                           #("i" "i" "i"))
                                                         #(ribcage
                                                           #(_ e m1 m2)
                                                           #((top)
                                                             (top)
                                                             (top)
                                                             (top))
                                                           #("i" "i" "i" "i"))
                                                         #(ribcage () () ())
                                                         #(ribcage
                                                           #(x)
                                                           #((top))
                                                           #("i")))
                                                        (hygiene guile)))
                                                    any
                                                    .
                                                    each-any))))
                                             clause1552)
                                            ((lambda (tmp1567)
                                               ((lambda (rest1568)
                                                  ((lambda (tmp1569)
                                                     ((lambda (tmp1570)
                                                        (if tmp1570
                                                          (apply (lambda (k1571
                                                                          e11572
                                                                          e21573)
                                                                   (list '#(syntax-object
                                                                            if
                                                                            ((top)
                                                                             #(ribcage
                                                                               #(k
                                                                                 e1
                                                                                 e2)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               #(rest)
                                                                               #((top))
                                                                               #("i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(f
                                                                                 clause
                                                                                 clauses)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               #(_
                                                                                 e
                                                                                 m1
                                                                                 m2)
                                                                               #((top)
                                                                                 (top)
                                                                                 (top)
                                                                                 (top))
                                                                               #("i"
                                                                                 "i"
                                                                                 "i"
                                                                                 "i"))
                                                                             #(ribcage
                                                                               ()
                                                                               ()
                                                                               ())
                                                                             #(ribcage
                                                                               #(x)
                                                                               #((top))
                                                                               #("i")))
                                                                            (hygiene
                                                                              guile))
                                                                         (list '#(syntax-object
                                                                                  memv
                                                                                  ((top)
                                                                                   #(ribcage
                                                                                     #(k
                                                                                       e1
                                                                                       e2)
                                                                                     #((top)
                                                                                       (top)
                                                                                       (top))
                                                                                     #("i"
                                                                                       "i"
                                                                                       "i"))
                                                                                   #(ribcage
                                                                                     #(rest)
                                                                                     #((top))
                                                                                     #("i"))
                                                                                   #(ribcage
                                                                                     ()
                                                                                     ()
                                                                                     ())
                                                                                   #(ribcage
                                                                                     #(f
                                                                                       clause
                                                                                       clauses)
                                                                                     #((top)
                                                                                       (top)
                                                                                       (top))
                                                                                     #("i"
                                                                                       "i"
                                                                                       "i"))
                                                                                   #(ribcage
                                                                                     #(_
                                                                                       e
                                                                                       m1
                                                                                       m2)
                                                                                     #((top)
                                                                                       (top)
                                                                                       (top)
                                                                                       (top))
                                                                                     #("i"
                                                                                       "i"
                                                                                       "i"
                                                                                       "i"))
                                                                                   #(ribcage
                                                                                     ()
                                                                                     ()
                                                                                     ())
                                                                                   #(ribcage
                                                                                     #(x)
                                                                                     #((top))
                                                                                     #("i")))
                                                                                  (hygiene
                                                                                    guile))
                                                                               '#(syntax-object
                                                                                  t
                                                                                  ((top)
                                                                                   #(ribcage
                                                                                     #(k
                                                                                       e1
                                                                                       e2)
                                                                                     #((top)
                                                                                       (top)
                                                                                       (top))
                                                                                     #("i"
                                                                                       "i"
                                                                                       "i"))
                                                                                   #(ribcage
                                                                                     #(rest)
                                                                                     #((top))
                                                                                     #("i"))
                                                                                   #(ribcage
                                                                                     ()
                                                                                     ()
                                                                                     ())
                                                                                   #(ribcage
                                                                                     #(f
                                                                                       clause
                                                                                       clauses)
                                                                                     #((top)
                                                                                       (top)
                                                                                       (top))
                                                                                     #("i"
                                                                                       "i"
                                                                                       "i"))
                                                                                   #(ribcage
                                                                                     #(_
                                                                                       e
                                                                                       m1
                                                                                       m2)
                                                                                     #((top)
                                                                                       (top)
                                                                                       (top)
                                                                                       (top))
                                                                                     #("i"
                                                                                       "i"
                                                                                       "i"
                                                                                       "i"))
                                                                                   #(ribcage
                                                                                     ()
                                                                                     ()
                                                                                     ())
                                                                                   #(ribcage
                                                                                     #(x)
                                                                                     #((top))
                                                                                     #("i")))
                                                                                  (hygiene
                                                                                    guile))
                                                                               (list '#(syntax-object
                                                                                        quote
                                                                                        ((top)
                                                                                         #(ribcage
                                                                                           #(k
                                                                                             e1
                                                                                             e2)
                                                                                           #((top)
                                                                                             (top)
                                                                                             (top))
                                                                                           #("i"
                                                                                             "i"
                                                                                             "i"))
                                                                                         #(ribcage
                                                                                           #(rest)
                                                                                           #((top))
                                                                                           #("i"))
                                                                                         #(ribcage
                                                                                           ()
                                                                                           ()
                                                                                           ())
                                                                                         #(ribcage
                                                                                           #(f
                                                                                             clause
                                                                                             clauses)
                                                                                           #((top)
                                                                                             (top)
                                                                                             (top))
                                                                                           #("i"
                                                                                             "i"
                                                                                             "i"))
                                                                                         #(ribcage
                                                                                           #(_
                                                                                             e
                                                                                             m1
                                                                                             m2)
                                                                                           #((top)
                                                                                             (top)
                                                                                             (top)
                                                                                             (top))
                                                                                           #("i"
                                                                                             "i"
                                                                                             "i"
                                                                                             "i"))
                                                                                         #(ribcage
                                                                                           ()
                                                                                           ()
                                                                                           ())
                                                                                         #(ribcage
                                                                                           #(x)
                                                                                           #((top))
                                                                                           #("i")))
                                                                                        (hygiene
                                                                                          guile))
                                                                                     k1571))
                                                                         (cons '#(syntax-object
                                                                                  begin
                                                                                  ((top)
                                                                                   #(ribcage
                                                                                     #(k
                                                                                       e1
                                                                                       e2)
                                                                                     #((top)
                                                                                       (top)
                                                                                       (top))
                                                                                     #("i"
                                                                                       "i"
                                                                                       "i"))
                                                                                   #(ribcage
                                                                                     #(rest)
                                                                                     #((top))
                                                                                     #("i"))
                                                                                   #(ribcage
                                                                                     ()
                                                                                     ()
                                                                                     ())
                                                                                   #(ribcage
                                                                                     #(f
                                                                                       clause
                                                                                       clauses)
                                                                                     #((top)
                                                                                       (top)
                                                                                       (top))
                                                                                     #("i"
                                                                                       "i"
                                                                                       "i"))
                                                                                   #(ribcage
                                                                                     #(_
                                                                                       e
                                                                                       m1
                                                                                       m2)
                                                                                     #((top)
                                                                                       (top)
                                                                                       (top)
                                                                                       (top))
                                                                                     #("i"
                                                                                       "i"
                                                                                       "i"
                                                                                       "i"))
                                                                                   #(ribcage
                                                                                     ()
                                                                                     ()
                                                                                     ())
                                                                                   #(ribcage
                                                                                     #(x)
                                                                                     #((top))
                                                                                     #("i")))
                                                                                  (hygiene
                                                                                    guile))
                                                                               (cons e11572
                                                                                     e21573))
                                                                         rest1568))
                                                                 tmp1570)
                                                          ((lambda (_1576)
                                                             (syntax-violation
                                                               'case
                                                               "bad clause"
                                                               x1542
                                                               clause1552))
                                                           tmp1569)))
                                                      ($sc-dispatch
                                                        tmp1569
                                                        '(each-any
                                                           any
                                                           .
                                                           each-any))))
                                                   clause1552))
                                                tmp1567))
                                             (f1551 (car clauses1553)
                                                    (cdr clauses1553)))))))
                          (f1551 m11547 m21548))))
                     tmp1544)
              (syntax-violation
                #f
                "source expression failed to match any pattern"
                tmp1543)))
          ($sc-dispatch
            tmp1543
            '(any any any . each-any))))
       x1542))))

(define identifier-syntax
  (make-syncase-macro
    'macro
    (lambda (x1577)
      ((lambda (tmp1578)
         ((lambda (tmp1579)
            (if tmp1579
              (apply (lambda (_1580 e1581)
                       (list '#(syntax-object
                                lambda
                                ((top)
                                 #(ribcage #(_ e) #((top) (top)) #("i" "i"))
                                 #(ribcage () () ())
                                 #(ribcage #(x) #((top)) #("i")))
                                (hygiene guile))
                             '(#(syntax-object
                                 x
                                 ((top)
                                  #(ribcage #(_ e) #((top) (top)) #("i" "i"))
                                  #(ribcage () () ())
                                  #(ribcage #(x) #((top)) #("i")))
                                 (hygiene guile)))
                             (list '#(syntax-object
                                      syntax-case
                                      ((top)
                                       #(ribcage
                                         #(_ e)
                                         #((top) (top))
                                         #("i" "i"))
                                       #(ribcage () () ())
                                       #(ribcage #(x) #((top)) #("i")))
                                      (hygiene guile))
                                   '#(syntax-object
                                      x
                                      ((top)
                                       #(ribcage
                                         #(_ e)
                                         #((top) (top))
                                         #("i" "i"))
                                       #(ribcage () () ())
                                       #(ribcage #(x) #((top)) #("i")))
                                      (hygiene guile))
                                   '()
                                   (list '#(syntax-object
                                            id
                                            ((top)
                                             #(ribcage
                                               #(_ e)
                                               #((top) (top))
                                               #("i" "i"))
                                             #(ribcage () () ())
                                             #(ribcage #(x) #((top)) #("i")))
                                            (hygiene guile))
                                         '(#(syntax-object
                                             identifier?
                                             ((top)
                                              #(ribcage
                                                #(_ e)
                                                #((top) (top))
                                                #("i" "i"))
                                              #(ribcage () () ())
                                              #(ribcage #(x) #((top)) #("i")))
                                             (hygiene guile))
                                           (#(syntax-object
                                              syntax
                                              ((top)
                                               #(ribcage
                                                 #(_ e)
                                                 #((top) (top))
                                                 #("i" "i"))
                                               #(ribcage () () ())
                                               #(ribcage #(x) #((top)) #("i")))
                                              (hygiene guile))
                                            #(syntax-object
                                              id
                                              ((top)
                                               #(ribcage
                                                 #(_ e)
                                                 #((top) (top))
                                                 #("i" "i"))
                                               #(ribcage () () ())
                                               #(ribcage #(x) #((top)) #("i")))
                                              (hygiene guile))))
                                         (list '#(syntax-object
                                                  syntax
                                                  ((top)
                                                   #(ribcage
                                                     #(_ e)
                                                     #((top) (top))
                                                     #("i" "i"))
                                                   #(ribcage () () ())
                                                   #(ribcage
                                                     #(x)
                                                     #((top))
                                                     #("i")))
                                                  (hygiene guile))
                                               e1581))
                                   (list (cons _1580
                                               '(#(syntax-object
                                                   x
                                                   ((top)
                                                    #(ribcage
                                                      #(_ e)
                                                      #((top) (top))
                                                      #("i" "i"))
                                                    #(ribcage () () ())
                                                    #(ribcage
                                                      #(x)
                                                      #((top))
                                                      #("i")))
                                                   (hygiene guile))
                                                 #(syntax-object
                                                   ...
                                                   ((top)
                                                    #(ribcage
                                                      #(_ e)
                                                      #((top) (top))
                                                      #("i" "i"))
                                                    #(ribcage () () ())
                                                    #(ribcage
                                                      #(x)
                                                      #((top))
                                                      #("i")))
                                                   (hygiene guile))))
                                         (list '#(syntax-object
                                                  syntax
                                                  ((top)
                                                   #(ribcage
                                                     #(_ e)
                                                     #((top) (top))
                                                     #("i" "i"))
                                                   #(ribcage () () ())
                                                   #(ribcage
                                                     #(x)
                                                     #((top))
                                                     #("i")))
                                                  (hygiene guile))
                                               (cons e1581
                                                     '(#(syntax-object
                                                         x
                                                         ((top)
                                                          #(ribcage
                                                            #(_ e)
                                                            #((top) (top))
                                                            #("i" "i"))
                                                          #(ribcage () () ())
                                                          #(ribcage
                                                            #(x)
                                                            #((top))
                                                            #("i")))
                                                         (hygiene guile))
                                                       #(syntax-object
                                                         ...
                                                         ((top)
                                                          #(ribcage
                                                            #(_ e)
                                                            #((top) (top))
                                                            #("i" "i"))
                                                          #(ribcage () () ())
                                                          #(ribcage
                                                            #(x)
                                                            #((top))
                                                            #("i")))
                                                         (hygiene
                                                           guile)))))))))
                     tmp1579)
              (syntax-violation
                #f
                "source expression failed to match any pattern"
                tmp1578)))
          ($sc-dispatch tmp1578 (quote (any any)))))
       x1577))))

