;;; init-completion.el --- Ido and explicit Helm commands -*- lexical-binding: t; -*-

;; Ido handles ordinary file/buffer prompts and other supported choices.
(use-package ido
  :ensure nil
  :demand t
  :config
  (ido-mode 1)
  (ido-everywhere 1))

(use-package ido-completing-read+
  :ensure t
  :demand t
  :config
  (ido-ubiquitous-mode 1))

;; Keep Ido as the default; invoke Helm through dedicated shortcuts.
;; Do not enable global helm-mode, which would replace completion prompts.
(use-package helm
  :ensure t
  :bind (("C-c h x" . helm-M-x)
         ("C-c h f" . helm-find-files)
         ("C-c h b" . helm-mini)
         ("C-c h r" . helm-recentf)
         ("C-c h g g" . helm-grep-do-git-grep)))

(provide 'init-completion)
;;; init-completion.el ends here
