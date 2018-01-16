;; prettiness.el
;; Visual settings and appearance tweaks

;; (require 'monokai-theme)
;; (load-theme 'adwaita)
;; (require 'silkworm-theme)
(require 'moe-dark-theme)
;; (require 'leuven-theme)
;; (require 'solarized-dark-theme)
(require 'spaceline-config)

(spaceline-emacs-theme)

(global-linum-mode t)

;; Set font
(if window-system
    (if (member "DejaVu Sans Mono" (font-family-list))
        (set-face-attribute 'default nil :font "DejaVu Sans Mono-12")))

(custom-set-variables
 '(tool-bar-mode nil))

(provide 'prettiness)
