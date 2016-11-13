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
	(setq tmp_val (- val 1))
	(loop for j from 1 upto tmp_val do
		(if (zerop (mod val j))
			(setf *counter* (+ *counter* 1))
		)
	)
	(if (= *counter* 1)
		(display val)
		(setf *counter* 0)
	)
)

