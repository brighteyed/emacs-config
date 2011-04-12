;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; cmake-mode
(require 'cmake-mode)

(dolist (regex '("CMakeLists\\.txt\\'" "\\.cmake$"))
  (add-to-list 'auto-mode-alist `(,regex . cmake-mode)))

