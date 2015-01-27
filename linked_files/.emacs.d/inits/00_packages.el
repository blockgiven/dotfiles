(require 'cl)
(defvar my/packages
  '(
    helm
    helm-robe
    go-mode
    inf-ruby
    jsx-mode
    quickrun
    rbenv
    robe
    ruby-block
    ruby-end
    ))
(let ((not-installed (remove-if 'package-installed-p my/packages)))
  (when not-installed
    (package-refresh-contents)
    (mapc 'package-install my/packages)))
