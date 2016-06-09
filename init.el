;;init.el

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

(setq default-directory "~/")
;;把lisp目录和elpa目录添加到搜索目录中
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "elpa" user-emacs-directory))


;;elisp文件
(require 'scratch)
(require 'custom-themes)
(require 'init-elpa)
(require 'init-utils)
(require 'bindings)

(require 'init-yasnippet)
(require 'init-chinese-fonts-setup)
(require 'init-auto-complete)
(require 'init-helm )
(require 'init-auctex )
(require 'init-org2blog )
(require 'init-web-mode )

(provide 'init)


;;init.el ends here

(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cfs--current-profile-name "profile1" t)
 '(cfs--fontsize-steps (quote (2 4 4)) t)
 '(custom-safe-themes
   (quote
    ("c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default)))
 '(initial-buffer-choice t)
 '(org-agenda-files (quote ("d:/java笔记.org")))
 '(package-selected-packages
   (quote
    (auto-complete org2blog magit web-mode yasnippet org helm chinese-fonts-setup auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
