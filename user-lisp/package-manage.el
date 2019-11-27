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
    ag
    alchemist
    async
    auto-compile
    avy
    coffee-mode
    counsel-projectile
    darcula-theme
    direx
    dockerfile-mode
    editorconfig
    elixir-mode
    emojify
    eshell-did-you-mean
    eshell-git-prompt
    exec-path-from-shell
    fill-column-indicator
    findr
    haml-mode
    ivy
    inf-ruby
    inflections
    jade-mode
    json-mode
    jump
    leuven-theme
    magit
    markdown-mode
    moe-theme
    multiple-cursors
    packed
    projectile
    rbenv
    restclient
    rspec-mode
    rubocop
    ruby-block
    ruby-compilation
    ruby-end
    ruby-tools
    rust-mode
    scss-mode
    silkworm-theme
    slim-mode
    solarized-theme
    spaceline
    string-inflection
    tide
    tss
    typescript-mode
    visual-regexp
    yaml-mode
    yasnippet))

;; install any packages that aren't found
(dolist (p user-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'package-manage)
