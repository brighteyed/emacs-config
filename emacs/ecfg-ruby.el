;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)

;; ruby-end
(require 'ruby-end)

;; enable ruby-mode in the following files
(dolist (regex '("\\.rake$" "\\.gemspec$" "\\.ru$" "Rakefile$" "Gemfile$" "Capfile$"))
  (add-to-list 'auto-mode-alist `(,regex . ruby-mode)))
