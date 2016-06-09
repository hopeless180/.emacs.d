;;custom-themes.el
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes/")
(setq molokai-theme-kit t)
(load-theme 'molokai t)

;;显示行号
(global-linum-mode t)
(setq column-number-mode t)

;;高亮括号匹配
(electric-pair-mode)
(show-paren-mode t)
(setq show-paren-style 'parenthesis)

;;美化显示符号, 比如lambda会显示希腊符号
(prettify-symbols-mode)
(global-prettify-symbols-mode 1)

;; 取消警告声音
(setq visible-bell t)

;; 自动换行
(setq default-fill-column 80)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default)))
 '(initial-buffer-choice t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




(provide 'custom-themes)
;;custom-themes.el ends here
