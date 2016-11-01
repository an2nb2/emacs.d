;;; ---- path manipulation

(eshell-git-prompt-use-theme 'git-radar)

(defun eshell/clear ()
  "Clear the eshell buffer."
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))

(provide 'setup-eshell)
