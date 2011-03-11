;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; Disable splash screen
(setq inhibit-splash-screen t)

;; Display date and time
(setq display-time-day-and-date 1)
(display-time-mode)

;; Display current column
(column-number-mode 1)

;; Turn vertical scroll bars and toolbar off
(toggle-scroll-bar 0)
(tool-bar-mode 0)

;; Do no insert tabs doing indendation
(setq-default indent-tabs-mode nil)
;; Tab width
(setq tab-width 2)

;; Highlight current line
(setq hl-line-face 'hl-line)  ;; Set highlight face
(global-hl-line-mode t)       ;; Turn hightlight on

;; Frame position and size
(mapc (lambda (p)
	(add-to-list 'default-frame-alist p))
      default-frame-rect)

;; Set default font
(set-frame-font default-font-desc)
