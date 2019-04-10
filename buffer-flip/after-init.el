(yorel-install-require 'key-chord)

(key-chord-define-global "u8" 'buffer-flip)

(setq buffer-flip-map
      (let
          ((map
            (make-sparse-keymap)))
        (define-key map "8" 'buffer-flip-forward)
        (define-key map "*" 'buffer-flip-backward)
        (define-key map
          (kbd "C-g")
          'buffer-flip-abort)
        map))
