(require 'elpy)

(elpy-enable)
(add-hook 'python-mode-hook
          (lambda ()
            (pyvenv-workon "emacs")))

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

(setq elpy-rpc-backend "jedi")

(provide 'setup-elpy)
