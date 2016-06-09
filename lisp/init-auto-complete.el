;; init-auto-complete.el
(require-package 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             (expand-file-name "/elpa/auto-complete-20160416.604/dict" user-emacs-directory))

;; 阻止自动触发补全动作
(setq-default ac-expand-on-auto-complete nil)
;;(setq-default ac-auto-start nil)
(setq-default ac-dwim nil)
(setq ac-quick-help-delay 0.5)
(setq tab-always-indent 'complete)
(global-auto-complete-mode t)

;;brianjcj 's acclang configuration
(setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
(add-hook 'css-mode-hook 'ac-css-mode-setup)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t)
(defun my-ac-cc-mode-setup ()
(setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)

;;(ac-set-trigger-key "TAB")
;;(define-key ac-mode-map [(control tab)] 'auto-complete)
(define-key ac-mode-map [(control tab)] 'auto-complete)
;; 使用after-load来确保ac-source-yasnippet已经完成加载
(after-load 'init-yasnippet
  (set-default '	ac-sources
	       '(	ac-source-imenu
			ac-source-dictionary
			ac-source-words-in-buffer
			ac-source-words-in-same-mode-buffers
			ac-source-words-in-all-buffer)))

(require 'init-ac-source)

(provide 'init-auto-complete)

;; init-auto-complete.el ends here
