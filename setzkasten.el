(load "~/Vicentino21/edition/setzkasten/class-definitions.el")
(load "~/Vicentino21/edition/setzkasten/casting.el")

;;;; code to parse definitions of typographical components (font parameters) and definitions of types. here the calling of the casting methods is issued. the output are SVG files, one for each type.

;; under construction, will eventually be a macro to process font and types data, defined by the typesetting person.

(defun test-generation ()
  (let ((staff (setzkasten/staff :number-of-lines 5
				 :distance-between-lines 100
				 :thickness 20
				 :endings "round"
				 :offset 10))
	(notehead-semibrevis (setzkasten/notehead :length-over-line 0.3
						  :width 0.8
						  :bold-stroke 33
						  :light-stroke 15
						  :black nil)))
    (let ((semibrevis-a (setzkasten/type-notehead :notehead-position 5
						  :type-width 350
						  :filename "semibrevis-a"
						  :ink-color "black"
						  :staff-instance staff
						  :notehead-instance notehead-semibrevis))
	  (semibrevis-b (setzkasten/type-notehead :notehead-position 4
						  :type-width 350
						  :filename "semibrevis-b"
						  :ink-color "black"
						  :staff-instance staff
						  :notehead-instance notehead-semibrevis)))
      ;(inverse-staff-position semibrevis-a 10)
      (cast semibrevis-a)
      (cast semibrevis-b)
      )))

(test-generation)



(defun testground ()
  (let ((head (setzkasten/notehead))
	(staff (setzkasten/staff)))
    (let ((testnote (setzkasten/type-notehead :notehead-instance head
					      :staff-instance staff)))
      (calculate-notehead-height testnote))))

(testground)

(defun generate-kasten ()
  (let ((notehead-oblique (setzkasten/notehead))
	(notehead-square (setzkasten/notehead))
	(stem-minima (setzkasten/stem))
	(flag-croma (setzkasten/flag))
	(stem-longa (setzkasten/stem))
	(staff (setzkasten/staff))
	(rest-hanging (setzkasten/rest))
	(dot-enharmonic (setzkasten/dot)))
    (let ((blank-a (setzkasten/type-staff :width 17
					  :staff-instance staff))
	  (blank-b (setzkasten/type-staff :width 35
					  :staff-instance staff))
	  (minima-a (setzkasten/type-notehead-flagged :width 28
						      :staff-instance staff
						      :notehead-instance notehead-oblique
						      :notehead-position 0
						      :stem-instance stem-minima
						      :flag-instance flag-croma
						      :dot-instance dot-enharmonic))
	  (rest-minima-b (setzkasten/type-rest :width 18
					       :staff-instance staff
					       :rest-instance rest-hanging
					       :rest-position 3))
	  (fclef-c (setzkasten/type-fclef-component
		    :staff-instance staff
		    :notehead-instance notehead-oblique
		    :stem-instance stem-minima)))
      (insert "\n")
      (cast fclef-c)
      (insert "\n")
      (cast minima-a)
      (insert "\n")
      (cast blank-b)
      (insert "\n")
      (cast rest-minima-b)
      )))

;(generate-kasten)

