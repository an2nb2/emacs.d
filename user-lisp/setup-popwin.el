(require 'direx)
(require 'popwin)

(popwin-mode 1)

(push '(direx:direx-mode :position left :width 25 :dedicated t)
      popwin:special-display-config)

(provide 'setup-popwin)
