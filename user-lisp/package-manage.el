(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

;; packages I use
(defvar user-packages
  '(ac-inf-ruby
    async
    auto-compile
    coffee-mode
    darcula-theme
    fill-column-indicator
    jade
    json-mode
    findr
    helm
    helm-git
    helm-git-files
    inf-ruby
    inflections
    jump
    magit
    markdown-mode
    multiple-cursors
    packed
    popup
    projectile
    restclient
    rinari
    rspec-mode
    ruby-compilation
    ruby-tools
    ruby-end
    ruby-block
    rubocop
    rvm
    slim-mode
    sr-speedbar
    yaml-mode
    yasnippet))

;; install any packages that aren't found
(dolist (p user-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'package-manage)
