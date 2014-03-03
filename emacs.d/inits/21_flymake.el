;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; common flymake setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'flymake)
;; flymake color
(set-face-background 'flymake-errline "light goldenrod")
(set-face-foreground 'flymake-errline "black")
(set-face-background 'flymake-warnline "light goldenrod")
(set-face-foreground 'flymake-warnline "black")

;; no display in GUI
(setq flymake-gui-warnings-enabled nil)

;; all files use flymake
(add-hook 'find-file-hook 'flymake-find-file-hook)

;; movement
(global-set-key [f10] 'flymake-goto-prev-error)
(global-set-key [f11] 'flymake-goto-next-error)
