(yorel-install-require 'd-mode)

(add-hook 'd-mode-hook
          (lambda ()
            (electric-pair-mode)
            (electric-indent-mode)))

(add-hook 'd-mode-hook
          (lambda ()
            (c-set-offset 'arglist-intro '+)
            (c-set-offset 'arglist-close 0)))
