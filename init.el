(add-to-list 'load-path "~/.emacs.d/init/")

(require 'init-basic)

(require 'init-funcs)

(require 'init-packages)

(require 'init-ui)

(require 'init-keybindings)

(require 'init-cpp)
;;
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'no-error 'no-message)

