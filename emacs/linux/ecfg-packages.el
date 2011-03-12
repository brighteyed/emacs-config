;; Custom Emacs configuration
;;
;;   Sergey Kondrikov, sergey.kondrikov@gmail.com
;;   2008-2011

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

(setq el-get-sources
      '(el-get package
               cmake-mode
               color-theme-railscasts
               edit-server
               go-mode
               highlight-parentheses
               highlight-symbol
               js2-mode
               ruby-block
               ruby-end
               rvm
               switch-window

               ;; emacs-goodies-el
               (:name emacs-goodies-el
                      :type apt-get)))

(el-get 'sync)
