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
  (push "~/emacs/rc/linux" load-path))

(when (equal system-type 'windows-nt)
  (push "~/emacs/rc/win" load-path))

;; customization
(load "rc-custom.el")

;; system specific settings
(load "rc-system.el")

;; window settings
(load "~/emacs/rc/rc-window.el")

;; buffers settings
(load "~/emacs/rc/rc-buffers.el")

;; modes settings
(load "~/emacs/rc/rc-recentf-mode.el")
(load "~/emacs/rc/rc-ruby-mode.el")
(load "~/emacs/rc/rc-org-mode.el")
(load "~/emacs/rc/rc-cua-mode.el")

;; Bind a key to ~/.emacs
(global-set-key (kbd "<f11>")
		(lambda() 
		  (interactive) 
		  (find-file "~/.emacs")))
