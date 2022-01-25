h := 1 /* Initialization of the pivot row */
k := 1 /* Initialization of the pivot column */

while h ≤ m and k ≤ n
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

(defun gaussian-elimination (matrix)
  (do ((h 1)
       (k 1)
       (m (get-m matrix))
       (i-max 0))
      ((or (> h (get-m matrix))
	   (> k (get-n matrix)))
       matrix)
    (setf i-max (apply 'max (loop for i from h to m collect (get-element matrix i k))))
    (if (zerop (get-element matrix i-max k))
	(incf k)
      (swap-rows matrix h i-max)
      (loop for i from (1+ h) to m do
	    (let ((f (/ (get-element matrix i k) (get-ement matrix h k))))
	      (set-element matrix i k 0)
	      (loop for j from (1+ k) to n do
		    (set-element matrix i j (- (get-element matrix i j) (* (get-element matrix h j) f))))))
      (incf h)
      (incf k))))

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

(defun get-row (matrix i)
  (let ((ii (* i (get-n matrix))))
    (subseq (get-matrix-data matrix) ii (+ ii (get-n matrix)))))

(defun get-column (matrix j)
  (loop for i from 0 to (1- (get-m matrix)) collect (nth (+ j (* i (get-n matrix))) (get-matrix-data matrix))))

(defun get-element (matrix i j)
  (nth (+ j (* i (get-m matrix))) (get-matrix-data matrix)))

(defun set-element (matrix i j value)
  (setf (nth (+ j (* i (get-m matrix))) (get-matrix-data matrix)) value))

(defun swap-rows (matrix i1 i2))




(set-element testmatrix 3 2 'x)

(setq testmatrix (make-matrix 5 5 0))

(get-row testmatrix 2)
(get-column testmatrix 3)
(get-element testmatrix 3 2)



(insert (format "\n\n%s" testmatrix))

