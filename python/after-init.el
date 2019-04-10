(add-hook 'python-mode-hook
          (lambda ()
            (electric-pair-mode)
            (electric-indent-mode)))
