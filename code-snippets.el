;;;; code snippet helper, unrelated to setzkasten functionality
;;;; TODO find a better place for this

;; redundant with the macro define-setzkasten-class
(defun jk/insert-slot (name)
  "Inserts a slot in a class definition."
  (interactive "MSlot name: ")
  (let ((start-region (point)))
    (insert "(" name " :initarg :" name)
    (evil-ret)
    (insert ":initform ")
    (evil-set-marker 65)
    (evil-ret)
    (insert ":accessor " name)
    (evil-ret)
    (insert ":documentation \"\")")
    (indent-region start-region (point))
    (evil-goto-mark 65)
    (evil-insert 0)))
