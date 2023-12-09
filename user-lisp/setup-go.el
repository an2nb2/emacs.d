(require 'go-mode)
(require 'eglot)
(require 'project)

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

;; custom hook to tell it to look for the nearest parent go.mod file
;; (that is, the root of the Go module) as the project root
(defun project-find-go-module (dir)
  (when-let ((root (locate-dominating-file dir "go.mod")))
    (cons 'go-module root)))

(cl-defmethod project-root ((project (head go-module)))
  (cdr project))

;; hook autocomplete
(defun auto-complete-for-go ()
  (auto-complete-mode 1))

(add-hook 'go-mode-hook 'my-go-mode-hook)
(add-hook 'go-mode-hook #'gorepl-mode)
(add-hook 'go-mode-hook 'auto-complete-for-go)
(add-hook 'go-mode-hook 'eglot-ensure)
(add-hook 'project-find-functions #'project-find-go-module)

(with-eval-after-load 'go-mode
  (require 'go-autocomplete))

(provide 'setup-go)
