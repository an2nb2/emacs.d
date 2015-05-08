;; Disable splash screen
(setq inhibit-startup-message t)

;; put user-lisp directory on load-path
(add-to-list 'load-path "~/.emacs.d/user-lisp")

;; Configure package management and install/load third party packages
(require 'package-manage)
;; Emacs defaults
(require 'defaults)
;; Appearance and visual tweaks
(require 'prettiness)
;; Key bindings
(require 'keybinds)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mode specific congiguration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'setup-ido)
(require 'setup-eshell)
(require 'setup-ruby-env)
(require 'setup-helm)
(require 'setup-coffee)
(require 'setup-multiple-cursors)
(require 'setup-markdown)
