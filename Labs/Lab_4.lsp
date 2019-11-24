(defun mapping (fun lst)
  (cons(funcall fun(car lst)))
  mapping fun(cdr lst))

(defun p1 (obj)
  (+ 1 obj))

(print (mapping p1 '(1 2 3)))
