;; prettiness.el
;; Visual settings and appearance tweaks

;; theme
(load-theme 'material t)
; (load-theme 'material-light t)

; (require 'monokai-theme)
; (load-theme 'adwaita)
; (require 'silkworm-theme)
; (require 'moe-dark-theme)
; (require 'leuven-theme)
; (require 'solarized-dark-theme)

; (load-theme 'ample t t)
; (load-theme 'ample-flat t t)
; (load-theme 'ample-light t t)
; (enable-theme 'ample)

;; modeline
(require 'spaceline-config)

(spaceline-emacs-theme)

;; Enable line numbers
(global-linum-mode t)

;; Font
(set-face-attribute 'default nil :height 150)

(if window-system
    (if (member "DejaVu Sans Mono" (font-family-list))
        (set-face-attribute 'default nil :font "DejaVu Sans Mono" :height 150)))

(custom-set-variables
 '(tool-bar-mode nil))

(provide 'prettiness)
