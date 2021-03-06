(require 'avy)
(require 'ivy)
(require 'projectile)
(require 'counsel)

(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-'") 'avy-goto-char-2)

(projectile-mode +1)
(counsel-projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'setup-ivy)
