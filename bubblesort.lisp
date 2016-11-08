(defparameter *list* '())
(defparameter *counter* '())
(defparameter *param1* 0)
(defparameter *param2* 0)
(defparameter tmp '())

(defun setter (val)
	(if (zerop val)
		(print *list*)
		(decrement val)
	)
)

(defun decrement (val)
	(setf val (- val 1))
	(setf *list* (append *list* (list (random 100))))
	(setter val)
)



(defun sorting ()
	(setf *counter* 0)
	(loop for i from 0 upto (- (length *list*) 1) do
		(if (/= i (- (length *list*) 1))
			(exchange i)
		)
	)
	
	(if (= *counter* (- (length *list*) 1))
		(print *list*)
		(sorting)
	)
)

(defun exchange (val)
	(setf *param1* (elt *list* val))
	(setf *param2* (elt *list* (+ val 1)))
	(if (> *param1* *param2*)
		(rebuild val)
		(setf *counter* (+ *counter* 1))
	)
)

(defun rebuild (val)
	(setf  tmp '())
	(loop for j from 0 upto (- (length *list*) 1) do
		(cond 
			((and (/= j val) (/= j (+ val 1))) (setf tmp (append tmp (list (elt *list* j)))))
			((= j val) (setf tmp (append tmp (append (list *param2*) (list *param1*)))))	
		)
	)
	(print tmp)
	(setf *list* tmp)
	(print *list*)
)


(defun bubblesort (val)
	(setter val)
	(sorting)
)