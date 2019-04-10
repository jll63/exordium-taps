(yorel-install-require 'ssh)

(setq ssh-mode-hook
      (lambda ()
        (shell-dirtrack-mode t)
        (setq dirtrackp nil)))
