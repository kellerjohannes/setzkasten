(defun jk/unicode-entry (id)
  (interactive "M")
  (cond ((string= id "ss") (insert "ſ"))
	((string= id "per") (insert "ꝑ"))))

(global-set-key (kbd "C-M-k") 'jk/unicode-entry)
