;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; Org-mode
(add-hook 'org-mode-hook 'toggle-truncate-lines)
(add-to-list 'auto-mode-alist
	     '("\\.org$" . org-mode))

(find-file ecfg-default-org-file)

;; Bind a key to default org file buffer
(global-set-key (kbd "C-<f11>")
		(lambda () 
		  (interactive)
		  (find-file ecfg-default-org-file)))
