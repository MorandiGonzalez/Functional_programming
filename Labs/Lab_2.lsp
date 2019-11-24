(defun f (x) 
    (- (sin x) (cos x)))


(defun Bisection (fn a b &optional (eps 0.0001))
  (let* ((fa (funcall fn a)) (fb (funcall fn b))
         (c (* (+ a b) 0.5)) (fc (funcall fn c)))
    (cond
      ((<= (abs fa) eps) a)
      ((<= (abs fb) eps) b)
      (t (if (eq (plusp fa) (minusp fc))
             (bisection fn a c eps)
             (bisection fn c b eps))))))
             
             
 
(print (Bisection #'f 0.1 3))
(print (f 2))