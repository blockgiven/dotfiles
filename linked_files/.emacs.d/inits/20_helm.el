(require 'helm-config)
(helm-mode t)

(require 'quickrun)
(custom-set-variables
 '(helm-mini-default-sources '(helm-source-buffers-list
			       helm-source-recentf
			       helm-source-buffer-not-found
			       helm-quickrun-source)))
