;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

(require 'color-theme)
(color-theme-initialize)

;; color-theme-railscasts
(load-file (concat ecfg-packages-dir "color-theme-railscasts/color-theme-railscasts.el"))
(color-theme-railscasts)

