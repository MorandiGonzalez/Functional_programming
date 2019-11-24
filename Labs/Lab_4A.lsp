(defun decr (x)
  (cond ((Null x) nil)
        ((numberp (car x)) (append (list (- (car x) 2)) (decr (cdr x))))
        ((listp (car x)) (append (list (decr (car x))) (decr (cdr x))))))



(print (decr '(2 3 4)))