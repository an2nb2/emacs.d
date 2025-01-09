;; Disable splash screen
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
(require 'setup-direx)
(require 'setup-ivy)
(require 'setup-ido)
(require 'setup-javascript-env)
(require 'setup-json-mode)
(require 'setup-markdown)
(require 'setup-multiple-cursors)
(require 'setup-vr)
(require 'setup-whitespace)
(require 'setup-yasnippet)
(require 'setup-go)
(require 'setup-groovy)
(require 'setup-elpy)
(require 'setup-direnv)
(require 'setup-eglot)
(require 'setup-terraform)
(require 'open-in-github)
(require 'setup-gptel)
