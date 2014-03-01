;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; common flymake setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'flymake)
;; flymake color
(set-face-background 'flymake-errline "gray30")
(set-face-background 'flymake-warnline "dark slate blue")
;; (custom-set-faces
;;   '(flymake-errline ((((class color)) (:background "gray30"))))
;;   '(flymake-warnline ((((class color)) (:background "LightSlateBlue")))))

;; no display in GUI
(setq flymake-gui-warnings-enabled nil)

;; all files use flymake
(add-hook 'find-file-hook 'flymake-find-file-hook)

;; movement
(global-set-key [f10] 'flymake-goto-prev-error)
(global-set-key [f11] 'flymake-goto-next-error)
