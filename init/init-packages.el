(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(provide 'init-packages)
