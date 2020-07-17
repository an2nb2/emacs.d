;; Disable splash screen


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq inhibit-startup-message t)

;; Disable menu bar
(menu-bar-mode -1)

;; put user-lisp directory on load-path
(add-to-list 'load-path "~/.emacs.d/user-lisp")

;; Configure package management and install/load third party packages
(require 'package-manage)
;; Emacs defaults
(require 'defaults)
;; Appearance and visual tweaks
(require 'prettiness)
;; Custom functions
(require 'defuns)
;; Key bindings
(require 'keybinds)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mode specific congiguration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'setup-coffee)
(require 'setup-direx)
(require 'setup-eshell)
(require 'setup-ivy)
(require 'setup-ido)
(require 'setup-javascript-env)
(require 'setup-json-mode)
(require 'setup-markdown)
(require 'setup-multiple-cursors)
(require 'setup-rbenv)
(require 'setup-ruby-env)
(require 'setup-vr)
(require 'setup-whitespace)
(require 'setup-yasnippet)
(require 'setup-go)
