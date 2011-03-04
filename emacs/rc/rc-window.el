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

;; Tab width
(setq tab-width 2)

;; Highlight current line
(setq hl-line-face 'hl-line)  ;; Set highlight face
(global-hl-line-mode t)       ;; Turn hightlight on

;; Frame position and size
(add-to-list 'default-frame-alist '(top . 60))
(add-to-list 'default-frame-alist '(left . 250))
(add-to-list 'default-frame-alist '(width . 125))
(add-to-list 'default-frame-alist '(height . 45))

;; Define default font
(when (string= system-name "brighteyed-laptop")
  (setq default-font-desc "-unknown-Liberation Mono-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1"))

;; Set default font
(set-frame-font default-font-desc)
