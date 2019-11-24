(defun za-words (s)
  (sort s  #'char-greaterp :key #'(lambda (a) (char a 0))))
 
(defun za-sentence (w)
  (mapcar #'za-words w))

(print (za-sentence '(("aaa" "ccc" "bbb") ("ddd" "fff" "eee"))))