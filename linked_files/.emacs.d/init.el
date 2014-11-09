;; C-H delete
(keyboard-translate ?\C-h ?\C-?)

;; use system tempdir for auto save files
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (package-refresh-contents)
  )
