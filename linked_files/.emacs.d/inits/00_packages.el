(require 'cl)
(defvar my/packages
  '(
    helm
    inf-ruby
    ruby-block
    ruby-end
    ))
(let ((not-installed (remove-if 'package-installed-p my/packages)))
  (when not-installed
    (package-refresh-contents)
    (mapc 'package-install my/packages)))
