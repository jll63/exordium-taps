(global-set-key (kbd "C-S-b") 'projectile-compile-project)
(global-set-key (kbd "C-S-t") 'projectile-test-project)
(global-set-key (kbd "C-c p p") 'helm-projectile-switch-project)
(global-set-key (kbd "C-c p f") 'helm-projectile)

(projectile-register-project-type 'generic '("")
                                  :compile "echo build"
                                  :test "echo test"
                                  :run "echo run")
