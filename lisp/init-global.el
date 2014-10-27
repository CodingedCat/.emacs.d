(provide 'init-global)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (manoj-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(default ((t (:foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

(global-linum-mode 1)
;;default frame position
(setq default-frame-alist
'((height . 50) (width . 180) (menu-bar-lines . 20) (tool-bar-lines . 0)))

;;������ʾ�ɶ����ţ��������ص���
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;;�ڱ�������ʾĿǰ�ҵ�λ��
;;��������ʾ%b�ļ���%f����������·��%pҳ��ٷ���%l�к�
(setq frame-title-format "%f")

;; ���ù��Ϊ����
;;(setq-default cursor-type 'bar)

;; һ�򿪾����� text ģʽ��
;;(setq default-major-mode 'text-mode)


;;�� y/n���� yes/no��
(fset 'yes-or-no-p 'y-or-n-p)

;;����ʾGNU emacs��������
(setq inhibit-startup-message t) 

;;����������
(scroll-bar-mode -1)

;;��ʾ��������
(which-function-mode t)

;;; --- ��������
(setq-default indent-tabs-mode t)       ;Ĭ�ϲ��ÿո����TAB
(setq default-tab-width 4)              ;����TABĬ�ϵĿ��
;;;(dolist (hook (list                     ;�����ÿո����TAB��ģʽ
;;;               'emacs-lisp-mode-hook
;;               'lisp-mode-hook
;;               'lisp-interaction-mode-hook
;;               'scheme-mode-hook
;;               'c-mode-hook
;;               'c++-mode-hook
;;               'java-mode-hook
;;               'haskell-mode-hook
;;               'asm-mode-hook
;;               'emms-tag-editor-mode-hook
;;               'sh-mode-hook
;;               ))
;;  (add-hook hook '(lambda () (setq indent-tabs-mode nil))))

;;; --- �� Mode-line ��ʾ��ǰBuffer�Ĵ�С
(size-indication-mode 1)

;;ͨ�������ֱ�ӵ���Ϳ��Դ򿪺��۵�����
;;(require 'semantic-tag-folding nil 'noerror)
;;(global-semantic-tag-folding-mode 1)
;;(global-srecode-minor-mode 1)
;;semantic�۵���ݼ����� ��Ҫ��Ϊ�˷�ֹ�������ú͸����õ��������ͻ��ɵ���۵�ʧ��
;;(define-key semantic-tag-folding-mode-map (kbd "C-c , -") 'semantic-tag-folding-fold-block)
;;(define-key semantic-tag-folding-mode-map (kbd "C-c , =") 'semantic-tag-folding-show-block)
;;(define-key semantic-tag-folding-mode-map (kbd "C-c ' -") 'semantic-tag-folding-fold-all)  
;;(define-key semantic-tag-folding-mode-map (kbd "C-c ' =") 'semantic-tag-folding-show-all)  

;;������ͬһ��buffer�д��ļ��У�������������
;;(diredp-toggle-find-file-reuse-dir 1) 

;;evil����
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
;;(setq evil-replace-state-cursor '(evil-insert-state-cursor))

;;;tramp for windows
(require 'tramp)
(setq tramp-default-method "plink")


;;: Change the path to db2cmd to reflect the correct 
;;: location for your machine. 
(setq sql-db2-program "D:/Program Files/ibm/SQLLIB/bin/db2cmd.exe") 
 
;;; The interesting options here is the "-t" option 
;;; passed to "db2". This is extremely handy - it 
;;; means that ';' (semicolon) ; is treated as the command 
;;; line terminator. The default is to treat the end-of-line 
;;; as a SQL statement terminator. 
;;; You may look up the command reference online for an 
;;; explanation of the rest. 
(setq sql-db2-options '("-c" "-i" "-w" "db2" "-tv"))

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
