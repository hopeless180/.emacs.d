;;init.el

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;防止乱码
(set-fontset-font "fontset-default"
                  'gb18030 '("Microsoft YaHei" . "unicode-bmp"))

;;把lisp添加到搜索路径中
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;elisp文件
(require 'scratch)
(require 'custom-themes)
(require 'init-elpa)
(provide 'init)
;;init.el ends here
