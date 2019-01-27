;; SCHEME CODE SHAPES
(define (def? exp)
  (and (pair? exp)
       (eq? 'define (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (pair? (cdddr exp))
       (null? (cddddr exp))))
(define (def-get-filename exp) (cadr exp))
(define (def-get-name exp) (caddr exp))
(define (def-get-body exp) (cadddr exp))
(define (raw? exp)
  (and (pair? exp)
       (eq? 'raw (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (null? (cdddr exp))))
(define (raw-get-filename exp) (cadr exp))
(define (raw-get-body exp) (caddr exp))
(define (datum? exp)
  (and (pair? exp)
       (eq? 'datum (car exp))
       (pair? (cdr exp))
       (null? (cddr exp))))
(define (datum-get-value exp) (cadr exp))
(define (if? exp)
  (and (pair? exp)
       (eq? 'if (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (pair? (cdddr exp))
       (null? (cddddr exp))))
(define (if-get-test exp) (cadr exp))
(define (if-get-consequent exp) (caddr exp))
(define (if-get-antecedent exp) (cadddr exp))
(define (lambda? exp)
  (and (pair? exp)
       (eq? 'lambda (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (null? (cdddr exp))))
(define (lambda-get-vars exp) (cadr exp))
(define (lambda-get-body exp) (caddr exp))
(define (begin? exp)
  (and (pair? exp) (eq? 'begin (car exp))))
(define (begin-get-statements exp) (cdr exp))
(define (application? exp)
  (and (pair? exp) (eq? 'app (car exp))))
(define (application-get-args exp) (cdr exp))
(define (let? exp)
  (and (pair? exp)
       (eq? 'let (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (null? (cdddr exp))))
(define (let-get-bindings exp) (cadr exp))
(define (let-get-body exp) (caddr exp))
(define (letrec? exp)
  (and (pair? exp)
       (eq? 'letrec (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (null? (cdddr exp))))
(define (letrec-get-bindings exp) (cadr exp))
(define (letrec-get-body exp) (caddr exp))
(define (closure? exp)
  (and (pair? exp)
       (eq? 'closure (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (pair? (cdddr exp))
       (null? (cddddr exp))))
(define (closure-get-size exp) (cadr exp))
(define (closure-get-env exp) (caddr exp))
(define (closure-get-label exp) (cadddr exp))
(define (var? exp)
  (and (pair? exp)
       (eq? 'var (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (null? (cdddr exp))))
(define (var-get-sort exp) (cadr exp))
(define (var-get-name exp) (caddr exp))

;; IL CODE SHAPES
(define (allocate-closure? exp)
  (and (pair? exp)
       (eq? 'allocate-closure (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (null? (cdddr exp))))
(define (allocate-closure-get-size exp) (cadr exp))
(define (allocate-closure-get-label exp) (caddr exp))
(define (set-closure!? exp)
  (and (pair? exp)
       (eq? 'set-closure! (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (pair? (cdddr exp))
       (null? (cddddr exp))))
(define (set-closure!-get-clo exp) (cadr exp))
(define (set-closure!-get-index exp) (caddr exp))
(define (set-closure!-get-value exp) (cadddr exp))

;; INSTRUCTION CODE SHAPES
(define (label? exp)
  (and (pair? exp)
       (eq? 'label (car exp))
       (pair? (cdr exp))
       (null? (cddr exp))))
(define (label-get-name exp) (cadr exp))
(define (stackframe? exp)
  (and (pair? exp)
       (eq? 'stackframe (car exp))
       (pair? (cdr exp))
       (null? (cddr exp))))
(define (stackframe-get-label exp) (cadr exp))
(define (branch? exp)
  (and (pair? exp)
       (eq? 'branch (car exp))
       (pair? (cdr exp))
       (null? (cddr exp))))
(define (branch-get-label exp) (cadr exp))
(define (jump? exp)
  (and (pair? exp)
       (eq? 'jump (car exp))
       (pair? (cdr exp))
       (null? (cddr exp))))
(define (jump-get-label exp) (cadr exp))
(define (allocate-closure? exp)
  (and (pair? exp)
       (eq? 'allocate-closure (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (null? (cdddr exp))))
(define (allocate-closure-get-size exp) (cadr exp))
(define (allocate-closure-get-label exp) (caddr exp))
(define (information? exp)
  (and (pair? exp)
       (eq? 'information (car exp))
       (pair? (cdr exp))
       (pair? (cddr exp))
       (pair? (cdddr exp))
       (null? (cddddr exp))))
(define (information-get-label-1 exp) (cadr exp))
(define (information-get-label-2 exp) (caddr exp))
(define (information-get-info exp) (cadddr exp))