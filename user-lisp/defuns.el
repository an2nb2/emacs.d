(defun my-delete-backward-word nil
  "kills backward word without it being copied into buffer"
  (interactive "*")
  (push-mark)
  (backward-word)
  (delete-region (point) (mark)))

(provide 'defuns)
