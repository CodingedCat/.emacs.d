(provide 'init-evil)
;;evil设置
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
;;默认emacs模式
(setq evil-default-state 'emacs) 
;;快捷vi模式
(define-key evil-emacs-state-map (kbd "C-o") 'evil-execute-in-normal-state) 
;;(setq evil-replace-state-cursor '(evil-insert-state-cursor))
