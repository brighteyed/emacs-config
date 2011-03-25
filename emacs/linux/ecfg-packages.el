;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

(defvar ecfg-packages-dir el-get-dir
  "Packages directory")

;; el-get
(setq el-get-sources
      '(el-get package
               cmake-mode
               color-theme-railscasts
               edit-server
               go-mode
               highlight-parentheses
               highlight-symbol
               js2-mode
               magit
               ruby-block
               ruby-end
               rvm
               switch-window
               yaml-mode

               (:name rhtml-mode
                      :type git
                      :url "https://github.com/bodhi/rhtml.git")

               ;; emacs-goodies-el
               (:name emacs-goodies-el
                      :type apt-get)))

(el-get 'sync)
