(yorel-install-require 'buffer-move)

(global-unset-key (kbd "C-x m"))
(global-set-key (kbd "C-x m <up>")     'buf-move-up)
(global-set-key (kbd "C-x m <down>")   'buf-move-down)
(global-set-key (kbd "C-x m <left>")   'buf-move-left)
(global-set-key (kbd "C-x m <right>")  'buf-move-right)
