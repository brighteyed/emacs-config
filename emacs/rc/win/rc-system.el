;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; input mode
(setq default-input-method 'russian-computer)

;; encoding
(set-selection-coding-system 'utf-16le-dos)
(set-terminal-coding-system 'cp866)
(prefer-coding-system  'utf-8)

;; append path to each package to load-path list
(dolist (file (directory-files "~/emacs/rc/win/packages/" t))
  (unless
      (or
       (string-match-p "\\(?:\\.\\|\\.\\.\\)$" file)
       (not (file-directory-p file)))
    (add-to-list 'load-path file)))

;; helper function
(defun package-dir (pkg)
  "Package PKG source directory"
  (concat "~/emacs/rc/win/packages/" pkg))

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
