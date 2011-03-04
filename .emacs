;;;
;;; Sergey Kondrikov
;;; 2008-2011
;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(transient-mark-mode (quote identity)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Set default font
(set-frame-font "-unknown-Liberation Mono-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")

;; Frame position and size
(add-to-list 'default-frame-alist '(top . 60))
(add-to-list 'default-frame-alist '(left . 250))
(add-to-list 'default-frame-alist '(width . 125))
(add-to-list 'default-frame-alist '(height . 45))

;; Disable splash screen
(setq inhibit-splash-screen t)

;; Turn vertical scroll bars and toolbar off
(toggle-scroll-bar 0)
(tool-bar-mode 0)

;; Tab width
(setq tab-width 2)

;; Turn off backup files
(setq make-backup-files nil)

;; Display current column
(column-number-mode 1)

;; Highlight current line
(setq hl-line-face 'hl-line)  ;; Set highlight face
(global-hl-line-mode t)       ;; Turn hightlight on

;; Enable disabled commands
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)

;; Display date and time
(setq display-time-day-and-date 1)
(display-time-mode)

;; Buffers switching
(iswitchb-mode 1)
(add-to-list 'iswitchb-buffer-ignore "*Buffer*")
(add-to-list 'iswitchb-buffer-ignore "*Messages*")
(add-to-list 'iswitchb-buffer-ignore "*Backtrace*")
(add-to-list 'iswitchb-buffer-ignore "*Completions*")
(add-to-list 'iswitchb-buffer-ignore "^[tT][aA][gG][sS]$")

(require 'windmove)
(global-set-key (kbd "M-P") 'windmove-up)
(global-set-key (kbd "M-N") 'windmove-down)
(global-set-key (kbd "M-B") 'windmove-left)
(global-set-key (kbd "M-F") 'windmove-right)

;; Buffers
(defun kill-other-buffers ()
  (interactive)
  (mapc 'kill-buffer 
	(delq (current-buffer)
	      (remove-if-not 'buffer-file-name (buffer-list)))))

;; Paths to elisp files
;(setq elisp-dirs '("~/emacs.d/elisp/" "~/go/misc/emacs/" "~/.emacs.d/el-get/el-get"))
;(setq elisp-dirs '("~/.emacs.d/el-get/el-get"))
;(mapcar
; (lambda (p)
;   (add-to-list 'load-path p)) elisp-dirs)

;; Org-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(add-hook 'org-mode-hook 'toggle-truncate-lines)
(find-file (concat "" "~/secure/Dropbox/scratch.org"))

;; Bind a key to ~/.emacs
(global-set-key (kbd "<f11>")
		(lambda() (interactive) (find-file "~/.emacs")))

;; Bind a key to "scratch.org"
(global-set-key (kbd "C-<f11>")
		(lambda () (interactive) (find-file "~/secure/Dropbox/scratch.org")))

;; Use cua-mode only for rectangles
(setq cua-enable-cua-keys nil)
(cua-mode t)

;; Go mode
;(require 'go-mode-load)

;; Edit server
					;(require 'edit-server)
					;(edit-server-start)

;; El-get
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

;;; end of .emacs
