(require 'eglot)
(require 'flycheck-eglot)

(with-eval-after-load 'eglot
  (add-to-list 'eglot-stay-out-of 'flymake)
  (add-to-list 'eglot-server-programs
               '(terraform-mode . ("terraform-ls" "serve"))))

(global-flycheck-eglot-mode 1)

(provide 'setup-eglot)
