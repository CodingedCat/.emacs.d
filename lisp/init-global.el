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

;;高亮显示成对括号，但不来回弹跳
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;;在标题栏提示目前我的位置
;;标题栏显示%b文件名%f缓冲区完整路径%p页面百分数%l行号
(setq frame-title-format "%f")

;; 设置光标为竖线
;;(setq-default cursor-type 'bar)

;; 一打开就起用 text 模式。
;;(setq default-major-mode 'text-mode)


;;以 y/n代表 yes/no，
(fset 'yes-or-no-p 'y-or-n-p)

;;不显示GNU emacs启动界面
(setq inhibit-startup-message t) 

;;滚动条设置
(scroll-bar-mode -1)

;;显示函数体名
(which-function-mode t)

;;; --- 缩进设置
(setq-default indent-tabs-mode t)       ;默认不用空格替代TAB
(setq default-tab-width 4)              ;设置TAB默认的宽度
;;;(dolist (hook (list                     ;设置用空格替代TAB的模式
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

;;; --- 在 Mode-line 显示当前Buffer的大小
(size-indication-mode 1)

;;通过鼠标在直接点击就可以打开和折叠代码
;;(require 'semantic-tag-folding nil 'noerror)
;;(global-semantic-tag-folding-mode 1)
;;(global-srecode-minor-mode 1)
;;semantic折叠快捷键设置 主要是为了防止其他配置和该配置的鼠标点击冲突造成点击折叠失败
;;(define-key semantic-tag-folding-mode-map (kbd "C-c , -") 'semantic-tag-folding-fold-block)
;;(define-key semantic-tag-folding-mode-map (kbd "C-c , =") 'semantic-tag-folding-show-block)
;;(define-key semantic-tag-folding-mode-map (kbd "C-c ' -") 'semantic-tag-folding-fold-all)  
;;(define-key semantic-tag-folding-mode-map (kbd "C-c ' =") 'semantic-tag-folding-show-all)  

;;设置在同一个buffer中打开文件夹，而不是另开窗口
;;(diredp-toggle-find-file-reuse-dir 1) 

;;evil设置
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
