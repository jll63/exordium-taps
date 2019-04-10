
(add-hook 'c++-mode-hook
          (lambda ()
            (add-to-list 'compilation-error-regexp-alist '("^Error \\(.*?\\)(\\([0-9]+\\)):" 1 2))
            (add-to-list 'compilation-error-regexp-alist '("^Assertion failed:.*file \\(.*?\\), line(\\([0-9]+\\)):" 1 2))
            (local-set-key [(meta shift q)] 'fill-region-as-paragraph)
            (superword-mode 1)
            (electric-pair-mode)
            (electric-indent-mode)))
