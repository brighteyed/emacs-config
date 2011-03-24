;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; rhtml-mode
(require 'rhtml-mode)
(add-to-list 'auto-mode-alist
             '("\\.html\.erb$" . rhtml-mode))
