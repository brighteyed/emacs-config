;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; input mode
(setq default-input-method 'russian-computer)

;; encoding
(set-selection-coding-system 'utf-16le-dos)
(prefer-coding-system  'utf-8)

;; helper function
(defun package-dir (pkg)
  "Package PKG source directory"
  (concat "~/emacs/rc/win/packages/" pkg))

;; append path to each package to load-path list
(let ((package-dir-list '((package-dir "cmake-mode")
			  (package-dir "color-theme-6.6.0")
			  (package-dir "edit-server")
			  (package-dir  "go-mode")
			  (package-dir  "js2-mode")
			  (package-dir  "ruby-block")
			  (package-dir  "ruby-end")
			  (package-dir  "switch-window")
			  (package-dir  "yasnippet"))))
  (mapc (lambda (p)
	  (add-to-list 'load-path (eval p)))
	package-dir-list))

;; cmake-mode
(require 'cmake-mode)
(add-to-list 'auto-mode-alist '("CMakeLists\\.txt\\'" . cmake-mode))

;; color-theme-railscasts
(require 'color-theme)
(color-theme-initialize)
(load-file (package-dir "color-theme-railscasts/color-theme-railscasts.el"))
(color-theme-railscasts)

;; edit-server
(require 'edit-server)
(edit-server-start)

;; go-mode
(require 'go-mode)

;; js2-mode
(require 'js2-mode)

;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)

;; ruby-end
(require 'ruby-end)

;; switch-window
(require 'switch-window)

;; yasnippet
(require 'yasnippet-bundle)
