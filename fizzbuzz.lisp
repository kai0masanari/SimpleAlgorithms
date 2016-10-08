(loop for i from 1 upto 100 do
	(cond ((zerop (mod i 15))(print 'fizzbuzz))
		  ((zerop (mod i 3))(print 'fizz))
		  ((zerop (mod i 5))(print 'buzz))
		  ((and (/= (mod i 15) 0) (/= (mod i 3) 0) (/= (mod i 5) 0)) (print i))
	)
)