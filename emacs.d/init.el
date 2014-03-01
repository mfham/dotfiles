;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 基本設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;; load-path
(setq load-path
      (append
       (list
        (expand-file-name "~/.emacs.d/")
;        (expand-file-name "~/.emacs.d/packages")
;        (expand-file-name "~/.emacs.d/auto-install")
;        (expand-file-name "~/.emacs.d/packages/direx-el")
;        (expand-file-name "~/.emacs.d/packages/yasnippet")
;        (expand-file-name "~/.emacs.d/packages/anything")
;        (expand-file-name "~/.emacs.d/packages/auto-complete")
;        (expand-file-name "~/.emacs.d/packages/auto-install")
       )
       load-path))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; init-loader
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;設定ファイルはinits以下に置いていて、init-loaderによって読み込まれる
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

(custom-set-variables
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
