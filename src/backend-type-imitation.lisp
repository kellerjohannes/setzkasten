(in-package :setzkasten)

(defun create-all ()
  (create-scores *scores*
                 *setzkasten-definition-components*
                 *setzkasten-definition-glyphs*
                 *setzkasten-syntax*))
