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

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

(setq el-get-sources
      '(el-get go-mode js2-mode ruby-block ruby-end switch-window

	       ;; cmake-mode
	       (:name cmake-mode
		      :after (lambda ()
			       (add-to-list 'auto-mode-alist '("CMakeLists\\.txt\\'" . cmake-mode))))

	       ;; edit-server
	       (:name edit-server
		      :features edit-server
		      :after (lambda ()
			       (edit-server-start)))

	       ;; emacs-goodies-el
	       (:name emacs-goodies-el :type apt-get)

	       ;; color-theme-railscasts
	       (:name color-theme-railscasts
		      :after (lambda ()
			       (color-theme-initialize)
			       (load-file (concat el-get-dir "color-theme-railscasts/color-theme-railscasts.el"))
			       (color-theme-railscasts)))
	       ))

(el-get 'sync)

;; customization
(load "~/emacs/rc/rc-custom.el")

;; window settings
(load "~/emacs/rc/rc-window.el")

;; buffers settings
(load "~/emacs/rc/rc-buffers.el")

;; modes settings
(load "~/emacs/rc/rc-org-mode.el")
(load "~/emacs/rc/rc-cua-mode.el")

;; Bind a key to ~/.emacs
(global-set-key (kbd "<f11>")
		(lambda() (interactive) (find-file "~/.emacs")))
