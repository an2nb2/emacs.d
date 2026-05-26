(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(evil-define-key 'normal 'global (kbd "<RET>") #'evil-open-below)
(evil-define-key 'normal 'global (kbd "<C-return>") #'evil-open-above)
(evil-define-key 'normal 'global (kbd "C-u") #'evil-scroll-up)

(evil-set-undo-system 'undo-redo)

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(provide 'setup-evil)
