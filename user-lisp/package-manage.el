(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

;; packages I use
(defvar user-packages
  '(auto-complete
    ac-inf-ruby
    async
    auto-compile
    coffee-mode
    darcula-theme
    egg
    findr
    helm
    helm-git
    helm-git-files
    inf-ruby
    inflections
    jump
    multiple-cursors
    packed
    popup
    rinari
    rspec-mode
    ruby-compilation
    ruby-tools
    rvm
    slim-mode))

;; install any packages that aren't found
(dolist (p user-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'package-manage)
