(define x (list (list 4 3) (list 2 1)))

(define (flat x)
  (cond ((null? x) (list))
        ((not (pair? x)) (list x))
        (else (append (flat (car x))
                      (flat (cdr x))))))

 (display (flat x))