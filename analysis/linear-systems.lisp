
(defun make-matrix (m n data)
  (list m n data))

(defun get-m (matrix)
  (first matrix))

(defun get-n (matrix)
  (second matrix))

(defun get-data (matrix)
  (third matrix))

(defun calc-index (i j m n)
  (if (and (> i 0) (> j 0)
	   (<= i m) (<= j n))
      (+ (* (1- i) n) (1- j))
      (format t "~&Index out of range: [~a,~a]" i j)))

(defun get-element (i j matrix)
  (let ((index (calc-index i j (get-m matrix) (get-n matrix))))
    (when index (nth index (get-data matrix)))))

(defun get-row (i matrix)
  (subseq (get-data matrix)
	  (calc-index i 1 (get-m matrix) (get-n matrix))
	  (1+ (calc-index i (get-n matrix) (get-m matrix) (get-n matrix)))))

(defun set-row (i matrix data)
  (do ((x (calc-index i 1 (get-m matrix) (get-n matrix)) (1+ x))
       (cnt 0 (1+ cnt))
       (rest-data data (rest rest-data)))
      ((null rest-data) t)
    (setf (nth x (get-data matrix)) (nth cnt data))))

(defun set-element (i j val matrix)
  (setf (nth (calc-index i j (get-m matrix) (get-n matrix))
	     (get-data matrix))
	val))

(defun swap-rows (i1 i2 matrix)
  (let ((tmp (get-row i1 matrix)))
    (set-row i1 matrix (get-row i2 matrix))
    (set-row i2 matrix tmp)))

(defun multiply-row (i num matrix)
  (loop for j from 1 to (get-n matrix) do
    (set-element i j (* num (get-element i j matrix)) matrix)))

(defun add-multiple (i-source num i-dest matrix)
  (set-row i-dest matrix
	   (mapcar #'+
		   (mapcar #'(lambda (x) (* x num))
			   (get-row i-source matrix))
		   (get-row i-dest matrix))))

h := 1 /* Initialization of the pivot row */
k := 1 /* Initialization of the pivot while h ≤ m and k ≤ n
    /* Find the k-th pivot: */
    i_max := argmax (i = h ... m, abs(A[i, k]))
    if A[i_max, k] = 0
        /* No pivot in this column, pass to next column */
        k := k+1
    else
         swap rows(h, i_max)
         /* Do for all rows below pivot: */
         for i = h + 1 ... m:
             f := A[i, k] / A[h, k]
             /* Fill with zeros the lower part of pivot column: */
             A[i, k] := 0
             /* Do for all remaining elements in current row: */
             for j = k + 1 ... n:
                 A[i, j] := A[i, j] - A[h, j] * f
         /* Increase pivot row and column */
         h := h + 1
         k := k + 1

(defun gaussian-elimination (this-matrix)
  (do ((h 1)
       (k 1)
       (m (get-m this-matrix))
       (i-max 0))
      ((or (> h (get-m this-matrix))
	   (> k (get-n this-matrix)))
       this-matrix)
    (setf i-max (+ 1 (posmax (loop for i from h to m collect
				   (abs (get-element this-matrix i k))))))
    (cond
     ((zerop (get-element this-matrix i-max k)) (incf k))
     (t (swap-rows this-matrix h i-max)
	(loop for i from h to m do
	      (let ((f (div (get-element this-matrix i k)
			    (get-element this-matrix h k))))
		(set-element this-matrix i k 0)
		(loop for j from (1+ k) to (get-n this-matrix) do
		  (set-element this-matrix i j
			       (- (get-element this-matrix i j)
				  (* (get-element this-matrix h j) f))))))
	(incf h)
	(incf k)))))

(defun div (a b)
  (if (and (numberp b) (not (zerop b)))
      (/ a b)
      0))

(defun posmax (data)
  (let ((cnt 0)
	(value (first data))
	(result 0))
    (dolist (candidate data result)
      (when (> candidate value)
	(setf value candidate)
	(setf result cnt))
      (incf cnt))))

(defun make-matrix (m n initial-element)
  (list m n (loop repeat (* m n) collect initial-element)))

(defun get-m (matrix)
  (first matrix))

(defun get-n (matrix)
  (second matrix))

(defun get-matrix-data (matrix)
  (third matrix))

(defun set-data (matrix data)
  (setf (third matrix) data))

(defun set-row (matrix i row-data)
  (let ((index (* (1- i) (get-n matrix))))
    (loop for x from index to (1- (+ index (get-n matrix)))
	  for y from 0 to (get-n matrix) do
	  (setf (nth x (get-matrix-data matrix))
		(nth y row-data)))))

(defun get-row (matrix i)
  (let ((ii (* (1- i) (get-n matrix))))
    (subseq (get-matrix-data matrix) ii (+ ii (get-n matrix)))))

(defun get-column (matrix j)
  (loop for i from 0 to (1- (get-m matrix)) collect
	(nth (+ (1- j) (* i (get-n matrix))) (get-matrix-data matrix))))

(defun get-element (matrix i j)
  (nth (+ (1- j) (* (1- i) (get-n matrix))) (get-matrix-data matrix)))

(defun set-element (matrix i j value)
  (setf (nth (+ (1- j) (* (1- i) (get-m matrix)))
	     (get-matrix-data matrix))
	value))

(defun swap-rows (matrix i1 i2)
  (let ((temp-row (get-row matrix i1)))
    (set-row matrix i1 (get-row matrix i2))
    (set-row matrix i2 temp-row)))



(setq testmatrix (make-matrix 5 5 0))
(set-data testmatrix (loop for i from 0 to 24 collect i))

(set-row testmatrix 2 '(a b c d e))
(swap-rows testmatrix 2 4)

(setq equations (make-matrix 3 4 0))
(set-data equations '(2 1 -1 8 -3 -1 2 -11 -2 1 2 -3))

(gaussian-elimination equations)


(set-element this-matrix 1 1 -17)
