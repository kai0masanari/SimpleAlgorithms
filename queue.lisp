(defparameter *list* '())
(defparameter *answer* '())

(defun enqueue (val)
	(setq *list* (append *list* (list val)))
)

(defun dequeue ()
	(setf *answer* (car *list*))
	(setf *list* (cdr *list*))	
	(if (null *answer*) (print 'empty) (print *answer*))
)