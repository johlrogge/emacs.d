(defvar unscroll-point (make-marker)
  "Cursorposition for the next call to 'unscroll'.")
(defvar unscroll-window-start (make-marker)
  "Window start for next call to 'unscroll'.")
(defvar unscroll-hscroll nil
  "Hscroll for next call to 'unscroll'.")

(put 'scroll-up-command   'unscrollable t)
(put 'scroll-down-command 'unscrollable t)

(defun unscroll-maybe-remember ()
  (if (not (get last-command 'unscrollable))
      (progn (set-marker unscroll-point (point))
             (set-marker unscroll-window-start (window-start))
             (setq unscroll-hscroll (window-hscroll)))))

(defadvice scroll-up (before remember-for-unscroll activate compile)
  "Remember where we started from for 'unscroll'."
  (unscroll-maybe-remember))

(defadvice scroll-down (before remember-for-unscroll activate compile)
  "Remember where we started from for 'unscroll'."
  (unscroll-maybe-remember))

(defun unscroll ()
  "Revert to 'unscroll-point' and 'unscroll-window-start'."
  (interactive)
  (if unscroll-point
      (progn
        (goto-char unscroll-point)
        (set-window-start nil unscroll-window-start)
        (set-window-hscroll nil unscroll-hscroll))
    (error "Cannot unscroll yet")))
