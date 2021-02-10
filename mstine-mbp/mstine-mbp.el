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

(setq diary-file "~/know/diary")

(setq org-agenda-include-diary t)
