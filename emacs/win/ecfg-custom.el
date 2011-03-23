;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; common settings
(defvar ecfg-default-font-desc "Courier New-10"
  "Default font")

;; computer specific settings
(when (string= system-name "BRIGHTEYED-WIN")
  (defvar ecfg-default-frame-rect '((top . 60) (left . 250) (width . 125) (height . 45))
    "Size and position of a window")
  (defvar ecfg-default-org-file "C:/My Dropbox/scratch.org"
    "Default org file"))

;; computer specific settings
(when (string= system-name "SERGEY-K")
  (defvar ecfg-default-frame-rect '((top . 20) (left . 140) (width . 125) (height . 55))
    "Size and position of a window")
  (defvar ecfg-default-org-file "C:/Users/kondrikov/Dropbox/scratch.org"
    "Default org file"))
