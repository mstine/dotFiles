(setenv "PATH" (concat (getenv "PATH") "~/.cargo/bin"))
(setq exec-path (append exec-path '("~/.cargo/bin")))

;; Font size
(set-face-attribute 'default nil
    :height 180)

(setq org-agenda-files
      '("~/know"))

(setq org-default-notes-file
      "~/know/todo.org")

(setq org-directory "~/know")

(load "asciidoctor-mode" 'noerror)

(setq org-mobile-directory "/Users/mstine/Library/Mobile Documents/iCloud~com~mobileorg~mobileorg/Documents")

(setq org-mobile-inbox-for-pull "~/org-mobile-inbox/inbox.org")

(setq diary-file "~/know/diary")

(setq org-agenda-include-diary t)
