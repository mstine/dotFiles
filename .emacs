;; Start Emacs edit server
(server-start)

;; Do not show startup screen
(setq inhibit-startup-screen t)

;; Do not create backup files
(setq make-backup-files nil)

;; Don't litter my init file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; Org Mode
(setq org-capture-templates
	 '(("t" "Todo" entry (file+headline org-default-notes-file "Tasks")
	 "* TODO %?\n  %i\n  %a")))

(setq org-todo-keywords
      '((sequence "TODO" "DOING" "|" "DONE")))

(setq org-todo-keyword-faces
      '(("TODO" . org-warning) ("DOING" . "yellow")))

;; Add any custom settings on my jpmc workstation
(add-to-list 'load-path (expand-file-name "jpmc" user-emacs-directory))
(load "jpmc" 'noerror)

;; Add any custom settings on my laptop
(add-to-list 'load-path (expand-file-name "mstine-mbp" user-emacs-directory))
(load "mstine-mbp" 'noerror)

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

(use-package evil-magit
  :after evil
  :ensure t)

(use-package evil-org
  :ensure t
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
	    (lambda ()
	      (evil-org-set-key-theme '(textobjects insert navigation additional shift todo heading))))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))
  
(evil-set-leader 'normal ",")

(evil-define-key 'normal 'global (kbd "<leader>c") 'org-capture)
(evil-define-key 'normal 'global (kbd "<leader>a") 'org-agenda)
(evil-define-key 'motion 'org-agenda-mode-map (kbd "[") 'org-agenda-earlier)
(evil-define-key 'motion 'org-agenda-mode-map (kbd "]") 'org-agenda-later)
