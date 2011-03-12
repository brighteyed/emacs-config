;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; cmake-mode
(require 'cmake-mode)
(add-to-list 'auto-mode-alist '("CMakeLists\\.txt\\'" . cmake-mode))
