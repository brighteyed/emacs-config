;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; Buffers switching
(iswitchb-mode t)

(setq buffer-ignore-list
      '("*Backtrace*"
	"*Buffer*"
	"*Compile-Log*"
	"Completions*"
	"*Messages*"
	"^[tT][aA][gG][sS]$"))

(mapc 
 (lambda (c)
   (add-to-list 'iswitchb-buffer-ignore c)) buffer-ignore-list)

;; Buffers navigation
(require 'windmove)
(global-set-key (kbd "M-P") 'windmove-up)
(global-set-key (kbd "M-N") 'windmove-down)
(global-set-key (kbd "M-B") 'windmove-left)
(global-set-key (kbd "M-F") 'windmove-right)

;; Enable disabled commands
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)

;; Add parts of each file's directory to the buffer name if not unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Buffers management
(defun kill-other-buffers ()
  "Kill other file visiting buffers"

  (interactive)
  (mapc 'kill-buffer 
	(delq (current-buffer)
	      (remove-if-not 'buffer-file-name (buffer-list)))))
