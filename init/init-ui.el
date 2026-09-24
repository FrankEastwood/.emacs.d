(setq inhibit-startup-screen t)

(global-display-line-numbers-mode 1)

(toggle-frame-maximized)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :height 160)
(setq-default cursor-type '(bar . 5))

(global-hl-line-mode 1)

(use-package monokai-theme
  :ensure t
  :config
  (load-theme 'monokai t))

(provide 'init-ui)
