;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; linum-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-linum-mode t)
(set-face-attribute 'linum nil
                    ;;    :background "light goldenrod"
                        :foreground "orange red"
                            :height 0.9)
(setq linum-format "%4d ")
(global-set-key [f5] 'linum-mode)
