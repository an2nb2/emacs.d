;; prettiness.el
;; Visual settings and appearance tweaks

;; Set font
(if window-system
    (if (member "DejaVu Sans Mono" (font-family-list))
        (set-face-attribute 'default nil :font "DejaVu Sans Mono-12")))

; (require 'darcula-theme)

(provide 'prettiness)
