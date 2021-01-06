(yorel-install-require 'yafolding)

(global-set-key [(control)(return)] #'bde-format-region)

(defun bb-yafolding-ball-hook ()
  (yafolding-mode)
  (save-excursion
    (beginning-of-buffer)
    (while (search-forward "BALL" nil t nil)
        (yafolding-hide-element))))

(add-hook 'c++-mode-hook 'bb-yafolding-ball-hook)
