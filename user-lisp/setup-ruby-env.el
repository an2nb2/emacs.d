(require 'rvm)
(require 'ruby-mode)

(setq ruby-insert-encoding-magic-comment nil)

(add-hook 'after-init-hook 'inf-ruby-switch-setup)

(setq ruby-deep-indent-paren '(?\[ ?\] t))

(add-hook 'ruby-mode-hook
          (lambda () (hs-minor-mode)))

(eval-after-load "hideshow"
  '(add-to-list 'hs-special-modes-alist
                `(ruby-mode
                  ,(rx (or "def" "class" "module" "do" "{" "[")) ; Block start
                  ,(rx (or "}" "]" "end"))                       ; Block end
                  ,(rx (or "#" "=begin"))                        ; Comment start
                  ruby-forward-sexp nil)))

(global-set-key (kbd "C-c h") 'hs-hide-block)
(global-set-key (kbd "C-c s") 'hs-show-block)

;; Enable autocomplete
(add-hook 'ruby-mode-hook 'auto-complete-mode)

;; TODO: Add https://github.com/dgutov/robe

(provide 'setup-ruby-env)
