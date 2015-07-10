;; Custom keybinds

(defun my-keybindings (my-key-map)
  (define-key my-key-map (kbd "<C-up>") 'shrink-window)
  (define-key my-key-map (kbd "<C-down>") 'enlarge-window)
  (define-key my-key-map (kbd "<C-left>") 'shrink-window-horizontally)
  (define-key my-key-map (kbd "<C-right>") 'enlarge-window-horizontally)
  (define-key my-key-map (kbd "<f12>") 'sr-speedbar-toggle))

(my-keybindings (current-global-map))

(provide 'keybinds)
