(server-mode 1)
(electric-pair-mode t)
(show-paren-mode t)
(delete-selection-mode t)

;; don't create such file init.el~
(setq make-backup-files nil)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

(provide 'init-basic)
