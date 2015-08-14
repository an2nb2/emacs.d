(require 'whitespace)

(setq whitespace-line-column 100)
(setq whitespace-style '(face lines-tail))

(add-hook 'ruby-mode-hook 'whitespace-mode)
(add-hook 'coffee-mode-hook 'whitespace-mode)
(add-hook 'json-mode-hook 'whitespace-mode)
(add-hook 'slim-mode-hook 'whitespace-mode)

(provide 'setup-whitespace)
