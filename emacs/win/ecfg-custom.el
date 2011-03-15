;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; computer specific settings
(when (string= system-name "BRIGHTEYED-WIN")
  (defvar ecfg-default-frame-rect '((top . 60) (left . 250) (width . 125) (height . 45))
    "Size and position of a window"))

;; computer specific settings
(when (string= system-name "SERGEY-K")
  (defvar ecfg-default-frame-rect '((top . 20) (left . 110) (width . 130) (height . 55))
    "Size and position of a window"))

(defvar ecfg-default-font-desc "-outline-Courier New-normal-normal-normal-mono-13-*-*-*-c-*-iso8859-1"
  "Default font")

(defvar ecfg-default-org-file "C:/My Dropbox/scratch.org"
  "Default org file")
