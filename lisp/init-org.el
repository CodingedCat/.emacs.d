(provide 'init-org)
;;GTD ��ݼ�
(global-set-key "\C-cc" 'remember)

;; GTD �ռ���Ŀ��ģ������
;;(org-remember-insinuate)
(setq org-directory "~/GTD/")
(setq org-default-notes-file  "~/GTD/inbox.org")
(setq org-remember-templates '(
("Task" ?t "** TODO %? %t\n %i\n %a" "~/GTD/inbox.org" "Tasks")
("Book" ?b "** %? %t\n %i\n %a" "~/GTD/inbox.org" "Book")
("Calendar" ?c "** %? %t\n %i\n %a" "~/GTD/inbox.org" "Calender")
("Project" ?p "** %? %t\n %i\n %a" "~/GTD/inbox.org" "Project")))

;;����TODO�ؼ���
(setq org-todo-keywords
(list "TODO(t)" "|" "CANCELED(c)" "DONE(d)"))

;; ����Ŀת���ڸ��ļ�֮�䣬��������ͻعˡ�
;;(custom-set-variables
;;'(org-refile-targets
;;(quote
;;(("inbox.org" :level . 1)("canceled.org" :level . 1) ("finished.org":level . 1))
;;)))
