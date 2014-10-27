(provide 'init-org)
;;GTD 快捷键
(global-set-key "\C-cc" 'remember)

;; GTD 收集项目的模板设置
;;(org-remember-insinuate)
(setq org-directory "~/GTD/")
(setq org-default-notes-file  "~/GTD/inbox.org")
(setq org-remember-templates '(
("Task" ?t "** TODO %? %t\n %i\n %a" "~/GTD/inbox.org" "Tasks")
("Book" ?b "** %? %t\n %i\n %a" "~/GTD/inbox.org" "Book")
("Calendar" ?c "** %? %t\n %i\n %a" "~/GTD/inbox.org" "Calender")
("Project" ?p "** %? %t\n %i\n %a" "~/GTD/inbox.org" "Project")))

;;设置TODO关键字
(setq org-todo-keywords
(list "TODO(t)" "|" "CANCELED(c)" "DONE(d)"))

;; 将项目转接在各文件之间，方便清理和回顾。
;;(custom-set-variables
;;'(org-refile-targets
;;(quote
;;(("inbox.org" :level . 1)("canceled.org" :level . 1) ("finished.org":level . 1))
;;)))
