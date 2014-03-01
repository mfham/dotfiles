;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 00関係でその他に当てはまらない設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; menu and scroll bar
(menu-bar-mode nil)
;;(set-scroll-bar-mode nil)

;; ;; yes or no -> y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; not make backup(***~)
(setq make-backup-files nil)

;; recent file
(recentf-mode t)
(setq recentf-max-menu-items 10)
(setq recentf-max-saved-items 3000)

;; ;;; mini buffer
(savehist-mode 1)
(setq history-length 10000)
(setq recentf-max-saved-items 10000)


;; soft tab
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; 行の先頭でC-kを一回押すだけで行全体を消去する
(setq kill-whole-line t)

;; 最終行に必ず一行挿入する
(setq require-final-newline t)

;;; バッファの最後でnewlineで新規行を追加するのを禁止する
(setq next-line-add-newlines nil)

;; complete
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

(icomplete-mode 1)

;; spell check
(setq-default flyspell-mode t)
(setq ispell-dictionary "american")

;; cua-mode
(cua-mode t)
(setq cua-enable-cua-keys nil)
(define-key global-map (kbd "C-c SPC") 'cua-set-rectangle-mark)

;; listbuf
(require 'ibuffer)

;; redo+.el
 (require 'redo+)
(global-set-key (kbd "C-M-Z") 'redo)
(setq undo-no-redo t)

;; カッコ等の対応自動挿入
(electric-pair-mode t)

;; 改行時に前行のインデントをなおす
(electric-indent-mode t)

;; 改行時にルールにしたがっていろいろやってくれる
(electric-layout-mode t)

