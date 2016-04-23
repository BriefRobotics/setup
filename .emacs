(require 'package)
(add-to-list 'package-archives '("melpa" .  "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" .  "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'evil)
(evil-mode 1)

(latex-preview-pane-enable)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)
