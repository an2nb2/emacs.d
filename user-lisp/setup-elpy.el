(require 'elpy)
(require 'lsp-jedi)
(require 'use-package)

(elpy-enable)
(add-hook 'python-mode-hook
          (lambda ()
            (pyvenv-workon "emacs")))

;; https://github.com/jorgenschaefer/elpy/issues/1749
(setenv "PYTHONIOENCODING" "utf-8")
(add-to-list 'process-coding-system-alist '("python" . (utf-8 . utf-8)))

;; https://debbugs.gnu.org/cgi/bugreport.cgi?bug=25753#44
(with-eval-after-load 'python
  (defun python-shell-completion-native-try ()
    "Return non-nil if can trigger native completion."
    (let ((python-shell-completion-native-enable t)
          (python-shell-completion-native-output-timeout
           python-shell-completion-native-try-output-timeout))
      (python-shell-completion-native-get-completions
       (get-buffer-process (current-buffer))
       nil "_"))))

(use-package lsp-jedi
  :ensure t
  :config
  (with-eval-after-load "lsp-mode"
    (add-to-list 'lsp-disabled-clients 'pyls)
    (add-to-list 'lsp-enabled-clients 'jedi)))

(setq elpy-rpc-backend "jedi")

(define-key global-map (kbd "C-c C-j") 'elpy-goto-definition)

(provide 'setup-elpy)
