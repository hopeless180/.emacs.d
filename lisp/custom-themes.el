;;custom-themes.el

;;自定义前景背景色
(set-background-color "black") ;; 使用黑色背景
(set-foreground-color "white") ;; 使用白色前景

(set-face-foreground 'region "red")  ;; 区域前景颜色设为红色
(set-face-background 'region "blue") ;; 区域背景色设为蓝色

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

(provide 'custom-themes)
;;custom-themes.el ends here
