(defun open-in-github ()
  "Open the current line in the file on GitHub."
  (interactive)
  (let* ((file-path (or (buffer-file-name)
                        (error "Buffer is not visiting a file")))
         (line-number (line-number-at-pos))
         (remote-url (string-trim (shell-command-to-string "git config --get remote.origin.url")))
         (branch-name (string-trim (shell-command-to-string "git rev-parse --abbrev-ref HEAD")))
         (repo-root (string-trim (shell-command-to-string "git rev-parse --show-toplevel")))
         (relative-path (file-relative-name file-path repo-root)))
    (unless (and remote-url branch-name)
      (error "Unable to retrieve Git remote or branch information"))
    ;; Transform the remote URL into a GitHub URL
    (let* ((base-url (replace-regexp-in-string "\\.git$" ""
                                               (replace-regexp-in-string "^git@\\(.*?\\):" "https://\\1/" remote-url)))
           (github-url (format "%s/blob/%s/%s#L%d" base-url branch-name relative-path line-number)))
      ;; Open the URL in the default browser
      (browse-url github-url)
      (message "Opened: %s" github-url))))

(provide 'open-in-github)
