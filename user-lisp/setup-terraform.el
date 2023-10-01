(require 'eglot)

(use-package terraform-mode
  :init
  (add-hook 'terraform-mode-hook 'eglot-ensure)
  :config
  (setq compile-command "terraform validate"))


(provide 'setup-terraform)
