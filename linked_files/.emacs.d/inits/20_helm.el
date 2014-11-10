(require 'helm)
(require 'helm-config)
(helm-mode t)

(require 'quickrun)
(add-to-list 'helm-mini-default-sources 'helm-quickrun-source)
