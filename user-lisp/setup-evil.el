(require 'evil)

(evil-mode 1)

(evil-define-key 'normal 'global (kbd "<RET>") #'evil-open-below)
(evil-define-key 'normal 'global (kbd "<C-return>") #'evil-open-above)
(evil-define-key 'normal 'global (kbd "C-u") #'evil-scroll-up)

(evil-set-undo-system 'undo-redo)

(provide 'setup-evil)
