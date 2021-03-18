(add-hook 'python-mode-hook
          (lambda ()
            (electric-pair-mode)
            (electric-indent-mode)))

(use-package elpy
  :ensure t
  :defer t
  :init
  (advice-add 'python-mode :before 'elpy-enable))
