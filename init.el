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
;; Key bindings
(require 'keybinds)
;; Custom functions
(require 'defuns)

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
(require 'setup-json-mode)
(require 'setup-speedbar)
(require 'setup-whitespace)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(package-selected-packages
   (quote
    (restclient magit jade-mode yasnippet yaml-mode sr-speedbar slim-mode rvm ruby-tools ruby-guard ruby-end ruby-block rubocop rspec-mode rinari projectile multiple-cursors monokai-theme markdown-mode json-mode helm-git-files helm-git fill-column-indicator egg darcula-theme coffee-mode auto-compile ac-inf-ruby)))
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-right-side nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
