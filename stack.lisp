(defparameter *list* ())
(defparameter *answer* '())

(defun pop ()
	(setf *answer* (car *list*))
	(setf *list* (cdr *list*))	
	(if (null *answer*) (print 'empty) (print *answer*))
)

(defun push (val)
	(setf *list* (cons val *list*))
)