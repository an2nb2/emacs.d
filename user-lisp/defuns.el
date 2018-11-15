(defun create-scratch-buffer nil
  "create a scratch buffer"
  (interactive)
  (switch-to-buffer (get-buffer-create "*scratch*"))
  (lisp-interaction-mode))

(defun my-delete-backward-word nil
  "kills backward word without it being copied into buffer"
  (interactive "*")
  (push-mark)
  (backward-word)
  (delete-region (point) (mark)))

(provide 'defuns)
