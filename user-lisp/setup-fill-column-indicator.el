(require 'fill-column-indicator)

(setq fci-rule-column 100)

(add-hook 'ruby-mode-hook 'fci-mode)
(add-hook 'coffee-mode-hook 'fci-mode)
(add-hook 'json-mode-hook 'fci-mode)

(provide 'setup-fill-column-indicator)
