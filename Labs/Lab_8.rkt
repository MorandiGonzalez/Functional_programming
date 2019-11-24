(define (cycle? x)
  (let ((visited '()))
    (define (cycle-helper x)
      (cond ((not (pair? x))
             (display #f)
             (newline))
            ((memq x visited)
             #t)
            (else
             (set! visited (cons x visited))
             (or (cycle-helper (car x))
                 (cycle-helper (cdr x))))))
    (cycle-helper x))
  (display (lngth x))
  (newline)
  (reverseMy x))

(define (lngth lst)
  (if (null? lst) ; Did we checked the whole list already?
      0           ; This will put an end to the recursion !
      (+ 1        ; Tail recursive call, we add 1 because we call ourselve recusrively with the cdr of the list (hence with a list that is one shorter)
         (lngth (cdr lst)))))

(define (reverseMy lst)
    (if (null? lst)
        lst
        (append (reverse (cdr lst)) (list (car lst)))))

(define (fib-list orig-n)
  ; n = n, f2 = 1, f1 = 1, fs = a list.
  (let loop ((n orig-n) (f2 1) (f1 1) (fs (list)))
    (cond
      ; If n = 0, return reversed list.
      ((zero? n) (reverse fs))
      ; Check if orig-n is in list. If so, return reversed list.
      ((member orig-n fs) (reverse fs))
      ;Else, find the next fibonacci number and add it to the list.
      (else (loop (- n 1) f1 (+ f2 f1) (cons f2 fs))))))

(define (test lst)
  (reverseMy lst))