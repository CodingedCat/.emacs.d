(provide 'init-evil)
;;evil����
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
;;Ĭ��emacsģʽ
(setq evil-default-state 'emacs) 
;;���viģʽ
(define-key evil-emacs-state-map (kbd "C-o") 'evil-execute-in-normal-state) 
;;(setq evil-replace-state-cursor '(evil-insert-state-cursor))
