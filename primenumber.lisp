(defparameter *counter* 0)

(defun primenumber (val)
	(loop for i from 0 upto val do
		(if (> i 1)
			(judge i)
		)
	)
)

(defun display (val)
	(print val)
	(setf *counter* 0)
)

(defun judge (val)
	(loop for j from 1 upto val do
		(if (zerop (mod val j))
			(setf *counter* (+ *counter* 1))
		)
	)
	(if (= *counter* 2)
		(display val)
		(setf *counter* 0)
	)
)

