;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; backup settings
(setq backup-directory-alist
      `(("." . "~/.emacs.d/backup/")))

(setq delete-old-versions t
      backup-by-copying t
      version-control t)

(setq kept-new-versions 6
      kept-old-versions 2)

