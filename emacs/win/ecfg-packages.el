;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; Append path to each package to load-path list
(dolist (file (directory-files ecfg-packages-dir t))
  (unless
      (or
       (string-match-p "\\(?:\\.\\|\\.\\.\\)$" file)
       (not (file-directory-p file)))
    (add-to-list 'load-path file)))
