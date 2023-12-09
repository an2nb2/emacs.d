;; disable backup, autosave, and lockfiles
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

;; Always display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Shorter scratch message
(setq initial-scratch-message ";; scratch")

;; fix tabs indenting
(setq-default indent-tabs-mode nil)

;; setup tab width
(setq-default tab-width 2)
(setq-default indent-line-function 'insert-tab)

;; automatically delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; allow upcase and downcase region
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; highlight the current line
(global-hl-line-mode)

;; use shell path
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; for eshell users
    (setq exec-path (split-string path-from-shell path-separator))))
(when window-system (set-exec-path-from-shell-PATH))

;; GPG signing
(pinentry-start)

(provide 'defaults)
