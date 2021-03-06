;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; buffers switching
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

;; buffers navigation
(require 'windmove)
(global-set-key (kbd "M-P") 'windmove-up)
(global-set-key (kbd "M-N") 'windmove-down)
(global-set-key (kbd "M-B") 'windmove-left)
(global-set-key (kbd "M-F") 'windmove-right)

;; enable disabled commands
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)

;; add parts of each file's directory to the buffer name if not unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; switch-window
(require 'switch-window)

;; yasnippet
(require 'yasnippet)
(yas/initialize)

;; highlight symbol under cursor
(require 'highlight-symbol)
(global-set-key (kbd "C-<f3>") 'highlight-symbol-at-point)
(global-set-key (kbd "S-<f3>") 'highlight-symbol-prev)
(global-set-key (kbd "<f3>") 'highlight-symbol-next)

;; indentation
(global-set-key (kbd "C-M-r")
                (lambda ()
                  (interactive)
                  (indent-region (point-min) (point-max))))

;; buffers management
(defun ecfg-kill-other-buffers ()
  "Kill other file visiting buffers"
  (interactive)
  (mapc 'kill-buffer 
	(delq (current-buffer)
	      (remove-if-not 'buffer-file-name (buffer-list)))))

(defun ecfg-indent-buffer (buffer)
  "Indent BUFFER"
  (save-current-buffer
    (set-buffer buffer)
    (indent-region (point-min) (point-max))
    (save-buffer)))

(defun ecfg-indent-file-buffers ()
  "Indent all file visiting buffers"
  (interactive)
  (mapc 'ecfg-indent-buffer
        (remove-if-not 'buffer-file-name (buffer-list))))

;; Buffer width and height
(and
  ;; enlarge buffer height
  (global-set-key (kbd "<M-kp-down>")
                  (lambda ()
                    (interactive)
                    (enlarge-window -1)))

  ;; shrink buffer height
  (global-set-key (kbd "<M-kp-up>")
                  (lambda ()
                    (interactive)
                    (enlarge-window 1)))

  ;; enlarge buffer width
  (global-set-key (kbd "<M-kp-right>")
                  (lambda ()
                    (interactive)
                    (enlarge-window 1 t)))

  ;; shrink buffer width
  (global-set-key (kbd "<M-kp-left>")
                  (lambda ()
                    (interactive)
                    (enlarge-window -1 t))))