;; Don't litter my init file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(setq org-todo-keyword-faces
      '(("TODO" . org-warning) ("DOING" . "yellow")))

;; Add any custom settings on my jpmc workstation
(add-to-list 'load-path (expand-file-name "jpmc" user-emacs-directory))
(load "jpmc" 'noerror) 

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))
