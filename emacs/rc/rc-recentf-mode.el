;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

(require 'recentf)

;; enable recentf mode and set list size
(recentf-mode 1)
(setq recentf-max-saved-items 20)

;; open recent file
(global-set-key (kbd "M-<f11>")
		(lambda() 
		  (interactive)
		  (find-file (completing-read "Open file: " recentf-list nil t))))
