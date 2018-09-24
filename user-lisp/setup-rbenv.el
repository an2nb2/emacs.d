(require 'exec-path-from-shell)
(setq rbenv-installation-dir "/usr/local/Cellar/rbenv/1.1.1")

;; Import shell path variable
(exec-path-from-shell-initialize)

(provide 'setup-rbenv)
