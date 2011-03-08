
;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

(setq el-get-sources
      '(el-get package
	       go-mode
	       js2-mode
	       ruby-block
	       ruby-end
	       rvm
	       switch-window

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
	       (:name emacs-goodies-el
		      :type apt-get)

	       ;; color-theme-railscasts
	       (:name color-theme-railscasts
		      :after (lambda ()
			       (color-theme-initialize)
			       (load-file (concat el-get-dir "color-theme-railscasts/color-theme-railscasts.el"))
			       (color-theme-railscasts)))))
(el-get 'sync)
