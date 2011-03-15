;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; disable splash screen
(setq inhibit-splash-screen t)

;; display date and time
(setq display-time-day-and-date 1)
(display-time-mode)

;; display current column
(column-number-mode 1)

;; turn vertical scroll bars and toolbar off
(toggle-scroll-bar 0)
(tool-bar-mode 0)

;; do no insert tabs doing indendation
(setq-default indent-tabs-mode nil)
;; tab width
(setq tab-width 2)

;; highlight current line
(setq hl-line-face 'hl-line)  ;; set highlight face
(global-hl-line-mode t)       ;; turn hightlight on

;; frame position and size
(mapc (lambda (p)
	(add-to-list 'default-frame-alist p))
      ecfg-default-frame-rect)

;; set default font
(set-frame-font ecfg-default-font-desc)
