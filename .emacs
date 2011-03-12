;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; system specific setup
(when (equal system-type 'gnu/linux)
  (push "~/emacs/linux" load-path))

(when (equal system-type 'windows-nt)
  (push "~/emacs/win" load-path))

;; customization
(load "ecfg-custom.el")

;; system specific settings
(load "ecfg-system.el")

;; window settings
(load "~/emacs/ecfg-window.el")

;; buffers settings
(load "~/emacs/ecfg-buffers.el")

;; backup settings
(load "~/emacs/ecfg-backup.el")

;; modes settings
(load "~/emacs/ecfg-recentf-mode.el")
(load "~/emacs/ecfg-ruby-mode.el")
(load "~/emacs/ecfg-org-mode.el")
(load "~/emacs/ecfg-cua-mode.el")

;; lisp mode
(load "~/emacs/ecfg-lisp.el")

;; Bind a key to ~/.emacs
(global-set-key (kbd "<f11>")
		(lambda() 
		  (interactive) 
		  (find-file "~/.emacs")))
