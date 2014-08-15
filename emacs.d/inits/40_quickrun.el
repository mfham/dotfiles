(require 'quickrun)

;; 結果の出力バッファと元のバッファを行き来させる
(push '("*quickrun*") popwin:special-display-config)

;; F4で実行
(global-set-key (kbd "<f4>") 'quickrun)

;; RSpec
(quickrun-add-command "rspec"
                      '((:command . "rspec")
                        (:exec    . "%c -cfd %s"))
                      :mode 'rspec-mode)
(add-to-list 'quickrun-file-alist '("\_spec.rb$" . "rspec"))
