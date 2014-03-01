;;;;;;;;;;;;
;; package
;;;;;;;;;;;;

;; add packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; install package
(require 'cl)

(defvar installing-package-list
  '(
    helm
    undo-tree
    auto-complete
    redo+
    js2-mode
    php-mode
    ruby-mode
    ruby-block
    ruby-end
    ))

(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
