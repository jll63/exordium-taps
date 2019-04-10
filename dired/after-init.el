(require 'dired)
(when completion-ignored-extensions
  (add-to-list 'completion-ignored-extensions ".dd")
  (add-to-list 'completion-ignored-extensions ".depends")
  (add-to-list 'completion-ignored-extensions ".tsk")
  (add-to-list 'completion-ignored-extensions ".64")
  (add-to-list 'completion-ignored-extensions ".linux"))
