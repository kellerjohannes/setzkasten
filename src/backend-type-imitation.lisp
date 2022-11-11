(in-package :setzkasten)

(defun create-score (score)
  (create-type-imitation-score score
                               *setzkasten-definition-components*
                               *setzkasten-definition-glyphs*
                               *setzkasten-syntax*))
(defun create-all ()
  (create-scores *scores*
                 *setzkasten-definition-components*
                 *setzkasten-definition-glyphs*
                 *setzkasten-syntax*))
