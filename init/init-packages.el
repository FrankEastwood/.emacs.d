x(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
	("gnu" . "https://elpa.gnu.org/packages/")
	("nongnu" . "https://elpa.nongnu.org/nongnu/")
	))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; Install packages and expose their commands for loading on first use.
(use-package magit
  :ensure t
  :commands (magit-status magit-log-current))

(use-package move-text
  :ensure t
  :commands (move-text-up move-text-down))

(use-package multiple-cursors
  :ensure t
  :commands (mc/edit-lines mc/mark-next-like-this
             mc/mark-previous-like-this mc/mark-all-like-this))

(provide 'init-packages)
