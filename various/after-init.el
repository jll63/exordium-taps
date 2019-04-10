
(defun copy-file-name-to-clipboard (full-path)
  "Copy the current buffer file name to the clipboard."
  (interactive "p")
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (if (= full-path 4) (buffer-file-name) (buffer-name)))))
    (when filename
      (kill-new filename)
      (message "Copied buffer file name '%s' to the clipboard." filename))))
