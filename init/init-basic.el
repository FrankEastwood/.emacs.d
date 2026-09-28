(server-mode 1)
(electric-pair-mode t)
(show-paren-mode t)
(delete-selection-mode t)
(defalias 'list-buffers 'ibuffer) ;;make ibuffer default
;; don't create such file init.el~
(setq make-backup-files nil)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;; Suggest the other Dired window's directory when copying or moving files.
(setq dired-dwim-target t)
(setq ring-bell-function 'ignore)
(provide 'init-basic)
