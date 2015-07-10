;; prettiness.el
;; Visual settings and appearance tweaks

(global-linum-mode t)

;; Set font
(if window-system
    (if (member "DejaVu Sans Mono" (font-family-list))
        (set-face-attribute 'default nil :font "DejaVu Sans Mono-12")))

(custom-set-variables
 '(tool-bar-mode nil))

(require 'monokai-theme)
; (require 'darcula-theme)

(provide 'prettiness)
