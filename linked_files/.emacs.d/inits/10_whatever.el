;; use system tempdir for auto save files
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq auto-save-list-file-prefix
              temporary-file-directory)

;; see more: http://www.emacswiki.org/emacs/AutoPairs
(electric-pair-mode t)

;; move window by shift + arrow key
;; http://www.emacswiki.org/emacs/WindMove
(windmove-default-keybindings)
