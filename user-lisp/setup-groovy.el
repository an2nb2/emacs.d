;; Custom keybinds
(require 'groovy-mode)

(add-hook 'groovy-mode-hook
          (lambda ()
            (c-set-offset 'label 2)))

(provide 'setup-groovy)
