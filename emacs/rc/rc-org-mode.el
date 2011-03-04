;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; Org-mode
(add-hook 'org-mode-hook 'toggle-truncate-lines)
(add-to-list 'auto-mode-alist
	     '("\\.org$" . org-mode))

;; Default org file
(when (string= system-name "brighteyed-laptop")
  (setq default-org-file "~/secure/Dropbox/scratch.org"))

(find-file default-org-file)

;; Bind a key to default org file buffer
(global-set-key (kbd "C-<f11>")
		(lambda () 
		  (find-file default-org-file)))
