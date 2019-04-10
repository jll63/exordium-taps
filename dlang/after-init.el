(yorel-install-require 'd-mode)

(add-hook 'd-mode-hook
          (lambda ()
            (electric-pair-mode)
            (electric-indent-mode)))
