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
  :demand t
  :config
  (load-theme 'monokai t)

  ;; Subtle current-line highlight; distinct blue selection.
  (set-face-attribute 'hl-line nil
                      :background "#3B3C34")
  (set-face-attribute 'region nil
                      :background "#465A8C"
                      :foreground "#F8F8F2"))

(provide 'init-ui)
