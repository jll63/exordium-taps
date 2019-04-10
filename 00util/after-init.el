(defun yorel-install-require (p)
  (unless (package-installed-p p)
    (package-install p))
  (require p))
