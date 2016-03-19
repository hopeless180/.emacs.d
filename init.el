;;init.el


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setenv "HOME" "d:/emacs")
(setenv "PATH" "d:/emacs")
(setq default-directory "~/")
;;把lisp目录和elpa目录添加到搜索目录中
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "elpa" user-emacs-directory))

;;elisp文件
(require 'scratch)
(require 'custom-themes)
(require 'init-elpa)

(require 'init-chinese-fonts-setup)

(provide 'init)
;;init.el ends here
