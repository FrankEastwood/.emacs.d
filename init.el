(package-initialize)

;;
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(setq make-backip-files nil)
(load custom-file 'no-error 'no-message)

;;basic frame config
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(delete-selection-mode t)


;; define open-init-file
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-init-file)
