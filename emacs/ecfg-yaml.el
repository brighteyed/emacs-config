;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; yaml-mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist
             '("\\.ya?ml\\'" . yaml-mode))
