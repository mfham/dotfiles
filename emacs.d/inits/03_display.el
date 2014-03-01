;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 見た目の設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; color
(set-face-foreground 'font-lock-function-name-face "skyblue1")
(set-face-foreground 'region "blue")
(set-face-background 'region "gray20")
(set-face-foreground 'font-lock-builtin-face "indian red")
; comment color
(set-face-foreground 'font-lock-comment-face "color-215")
(set-face-foreground 'font-lock-comment-delimiter-face "color-215")
(set-face-foreground 'font-lock-string-face "orange" )
(set-face-foreground 'font-lock-keyword-face "green" )
(set-face-foreground 'minibuffer-prompt "skyblue1" )
(set-face-foreground 'mode-line "white" )
(set-face-background 'mode-line "SlateBlue" )


;; visual
;;; 対応する括弧を光らせる。
(show-paren-mode 1)

;;B; ウィンドウ内に収まらないときだけ括弧内も光らせる。
(setq show-paren-style 'mixed)

;;; 行末の空白を表示
(setq-default show-trailing-whitespace t)

;;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;;; カーソルの位置が何行目かを表示する
(line-number-mode t)

;;; カーソルの場所を保存する
(require 'saveplace)
(setq-default save-place t)

;; add directory name
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; show function name
(which-function-mode 1)

;; 変更ファイルの再読み込み自動化
(global-auto-revert-mode 1)
