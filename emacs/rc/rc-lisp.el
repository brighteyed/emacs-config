;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; display information about a function in echo area
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)

;; highlight surrounding parentheses
(require 'highlight-parentheses)
(add-hook 'emacs-lisp-mode-hook 'highlight-parentheses-mode)
 
;; find function at point
(define-key 
  emacs-lisp-mode-map (kbd "M-.") 'find-function-at-point)

;; complete symbol
(define-key 
  lisp-mode-shared-map (kbd "M-&") 'lisp-complete-symbol)
