;; auto-complete
(add-to-list 'load-path "~/.emacs.d/elpa/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/ac-dict")
(ac-config-default)

(setq ac-auto-start nil)
(ac-set-trigger-key "TAB")

(add-hook 'auto-complete-mode-hook
          (lambda ()
            (define-key ac-completing-map (kbd "C-n") 'ac-next)
            (define-key ac-completing-map (kbd "C-p") 'ac-previous)))
