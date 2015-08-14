;; Custom keybinds

(defun my-keybindings (my-key-map)
  (define-key my-key-map (kbd "<C-S-up>") 'shrink-window)
  (define-key my-key-map (kbd "<C-S-down>") 'enlarge-window)
  (define-key my-key-map (kbd "<C-S-left>") 'shrink-window-horizontally)
  (define-key my-key-map (kbd "<C-S-right>") 'enlarge-window-horizontally)
  (define-key my-key-map (kbd "<f12>") 'sr-speedbar-toggle))

(my-keybindings (current-global-map))

(provide 'keybinds)
