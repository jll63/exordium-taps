(global-set-key [(f1)] (global-key-binding [(control x) (b)]))

(setq visible-bell t)
(setq mouse-yank-at-point t)

;;; Don't pop other frame when switching buffers
(setq iswitchb-default-method  'samewindow) ; samewindow
(setq ido-default-buffer-method 'selected-window) ; selected-window

(setq pop-up-windows nil)
(setq pop-up-frames nil)
(setq split-height-threshold nil
      split-width-threshold nil)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Make compilation buffer reuse window/frame
(push '("\\*compilation\\*" . (nil (reusable-frames . t))) display-buffer-alist)

(setq compilation-always-kill t)
(setq compilation-read-command nil)
(setq compilation-ask-about-save nil)
(setq compilation-scroll-output t)

(setq split-window-preferred-function nil)
;; (setq split-window-preferred-function 'split-window-sensibly)

(defun toggle-window-dedicated ()
"Toggle whether the current active window is dedicated or not"
(interactive)
(message
 (if (let (window (get-buffer-window (current-buffer)))
       (set-window-dedicated-p window
        (not (window-dedicated-p window))))
    "Window '%s' is dedicated"
    "Window '%s' is normal")
 (current-buffer)))

(global-set-key [pause] 'toggle-window-dedicated)

(global-set-key [meta q] 'fill-paragraph)
(setq compilation-scroll-output 'first-error)

(defun gcm-scroll-down ()
  (interactive)
  (scroll-up 1))

(defun gcm-scroll-up ()
  (interactive)
  (scroll-down 1))

(global-set-key (kbd "<C-down>") 'gcm-scroll-down)
(global-set-key (kbd "<C-up>") 'gcm-scroll-up)

(global-set-key (kbd "<C-prior>") 'backward-paragraph)
(global-set-key (kbd "<C-next>") 'forward-paragraph)

(defun comint-set-erase-buffer-key ()
  (interactive)
  (local-set-key (kbd "<C-M-backspace>") 'erase-buffer))
(put 'erase-buffer 'disabled nil)

(add-hook 'comint-mode-hook 'comint-set-erase-buffer-key)

(add-to-list 'warning-suppress-types '(undo discard-info))
(defun helm-swoop--split-window-default ($buf &optional resume)
  "Split window according to `helm-swoop-split-with-multiple-windows'
and `helm-swoop-split-direction' settings."
  (if helm-swoop-split-with-multiple-windows
      (funcall helm-swoop-split-direction)
    (when (one-window-p)
      (funcall helm-swoop-split-direction)))
  (other-window 1)
  (switch-to-buffer $buf))

(add-to-list 'display-buffer-alist
             '("^\\*shell\\*$" . (display-buffer-same-window)))
