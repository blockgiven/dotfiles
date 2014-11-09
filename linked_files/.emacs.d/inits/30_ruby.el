(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

(require 'ruby-end)
;; |for, block, args|
(add-to-list 'electric-pair-pairs '(?| . ?|))
