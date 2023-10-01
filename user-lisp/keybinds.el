;; Custom keybinds
(require 'defuns)

(defun my-keybindings (my-key-map)
  (define-key my-key-map (kbd "<C-S-up>") 'shrink-window)
  (define-key my-key-map (kbd "<C-S-down>") 'enlarge-window)
  (define-key my-key-map (kbd "<C-S-left>") 'shrink-window-horizontally)
  (define-key my-key-map (kbd "<C-S-right>") 'enlarge-window-horizontally)
  (define-key my-key-map (kbd "<M-down>") 'forward-paragraph)
  (define-key my-key-map (kbd "<M-up>") 'backward-paragraph)
  (define-key my-key-map (kbd "<M-backspace>") 'my-delete-backward-word)
  (define-key my-key-map (kbd "<f4>") 'end-kbd-macro)
  (define-key my-key-map (kbd "<f5>") 'compile)
  )

(my-keybindings (current-global-map))

(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil)
  )

(provide 'keybinds)
