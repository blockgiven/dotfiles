(require 'cl)
(defvar my/packages
  '(ruby-electric))
(let ((not-installed (remove-if 'package-installed-p my/packages)))
  (when not-installed
    (package-refresh-contents)
    (mapc 'package-install my/packages)))

