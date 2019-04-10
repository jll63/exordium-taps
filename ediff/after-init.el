(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-horizontally)

(add-hook 'ediff-load-hook
          (lambda ()
  "Face settings for `ediff'."
  (custom-set-faces '(ediff-current-diff-A
                      ((((type tty)) :background "yellow" :foreground "blue")
                       (t :background "DarkSeaGreen3" :foreground "blue violet"))))
  (custom-set-faces '(ediff-fine-diff-A
                      ((((type tty)) :background "blue" :foreground "white")
                       (t :background "gold1" :foreground "red"))))
  (custom-set-faces '(ediff-current-diff-B
                      ((((type tty)) :background "yellow" :foreground "black")
                       (t :background "DodgerBlue1" :foreground "gray11"))))
  (custom-set-faces '(ediff-fine-diff-B
                      ((((type tty)) :background "cyan" :foreground "red")
                       (t :background "chocolate2" :foreground "dark slate blue"))))
  (custom-set-faces '(ediff-current-diff-C
                      ((((type tty)) :background "yellow" :foreground "black")
                       (t :background "DodgerBlue1" :foreground "gray11"))))
  (custom-set-faces '(ediff-fine-diff-C
                      ((((type tty)) :background "cyan" :foreground "red")
                       (t :background "chocolate2" :foreground "dark slate blue"))))))
