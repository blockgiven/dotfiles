(require 'rbenv)
(setq rbenv-installation-dir "/usr/local/var/rbenv") ;; TODO: move to mac-*.el
(global-rbenv-mode)

(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

(require 'ruby-end)
;; |for, block, args|
(add-to-list 'electric-pair-pairs '(?| . ?|))

(require 'inf-ruby)
(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-eval-binding "Pry.toplevel_binding")
(add-hook 'inf-ruby-mode-hook 'ansi-color-for-comint-mode-on)

(require 'rcodetools)

(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)

(custom-set-variables '(robe-completing-read-func 'helm-robe-completing-read))
