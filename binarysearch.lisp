(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-my-number ()
	(ash (+ *small* *big*) -1))
  
(defun guess-my-number2 ()
	(floor (/ (+ *small* *big*) 2)))

(defun smaller ()
	(setf *big* (1- (guess-my-number)))    
	(guess-my-number))

(defun bigger ()
	(setf *small* (1+ (guess-my-number)))
	(guess-my-number))