;; -*- lexical-binding: t; -*-

(defun my-c-cpp-editing-setup ()
  (setq-local indent-tabs-mode nil)
  (setq-local c-basic-offset 4))

(add-hook 'c-mode-hook #'my-c-cpp-editing-setup)
(add-hook 'c++-mode-hook #'my-c-cpp-editing-setup)

;; corfu
(use-package corfu
  :ensure t
  :init
  (global-corfu-mode)
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0.2)
  (corfu-auto-prefix 2)
  (corfu-cycle t))

;; C/C++ eglot
(use-package eglot
  :ensure nil
  :hook
  ((c-mode . eglot-ensure)
   (c++-mode . eglot-ensure))
  :config
  (add-to-list 'eglot-server-programs
               '((c-mode c++-mode)
                 . ("clangd"
                    "--background-index"
                    "--clang-tidy")))
  :bind
  (:map eglot-mode-map
        ("C-c r" . eglot-rename)
        ("C-c a" . eglot-code-actions)
        ("C-c f" . eglot-format-buffer)))

;; keybinding
(global-set-key (kbd "<f5>") #'compile)
(global-set-key (kbd "<f6>") #'recompile)

(provide 'init-cpp)
