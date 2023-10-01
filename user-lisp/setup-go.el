(require 'go-mode)
(require 'eglot)

;; setup hooks and keybindings
(defun my-go-mode-hook ()
  ;; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
  ;; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet")))

;; hook autocomplete
(defun auto-complete-for-go ()
  (auto-complete-mode 1))

(add-hook 'go-mode-hook 'my-go-mode-hook)
(add-hook 'go-mode-hook #'gorepl-mode)
(add-hook 'go-mode-hook 'auto-complete-for-go)
(add-hook 'go-mode-hook 'eglot-ensure)

(with-eval-after-load 'go-mode
  (require 'go-autocomplete))

(provide 'setup-go)
