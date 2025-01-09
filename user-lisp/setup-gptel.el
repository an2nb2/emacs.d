(defun gptel-api-key ()
  (with-temp-buffer
    (insert-file-contents "~/.emacs.d/.auth/gptel")
    (buffer-string)))

(provide 'setup-gptel)
