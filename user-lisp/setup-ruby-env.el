(require 'rvm)
(require 'ruby-mode)
;; (require 'rinari)

(add-hook 'after-init-hook 'inf-ruby-switch-setup)

;; use rvm's default ruby for the current Emacs session
; (rvm-use-default)

;; Auto RVM switcher (when start up inf-ruby, rails console, webserver)
(defadvice rinari-web-server (before rvm-switch-rinari-web-server)
  (rvm-activate-corresponding-ruby))
(ad-activate 'rinari-web-server)

(defadvice rinari-console (before rvm-switch-rinari-console)
  (rvm-activate-corresponding-ruby))
(ad-activate 'rinari-console)

(defadvice run-ruby (before rvm-switch-run-ruby)
  (rvm-activate-corresponding-ruby))
(ad-activate 'run-ruby)

 (setq ruby-deep-indent-paren '(?\[ ?\] t))

(provide 'setup-ruby-env)
