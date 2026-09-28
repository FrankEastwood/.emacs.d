(global-set-key (kbd "<f2>") 'open-init-file)

;; Select the neighboring window with Shift + arrow keys.
(require 'windmove)
(windmove-default-keybindings)

;; Git status and history.
(global-set-key (kbd "C-c m s") 'magit-status)
(global-set-key (kbd "C-c m l") 'magit-log-current)

;; Move the current line or active region.
(global-set-key (kbd "M-p") 'move-text-up)
(global-set-key (kbd "M-n") 'move-text-down)

;; Multiple cursors.
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Complie Mode
(global-set-key (kbd "C-c c") #'compile)

;; duplicate line
(global-set-key (kbd "C-c d") #'duplicate-line)

;; set mark
(global-set-key (kbd "C-.") #'set-mark-command)

;; forbiden C-left mouse
(global-set-key (kbd "C-<down-mouse-1>") 'ignore)
(provide 'init-keybindings)
