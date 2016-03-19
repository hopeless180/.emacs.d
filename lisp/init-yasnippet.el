;; init-yasnippet.el
(require-package 'yasnippet)
(require 'yasnippet)
;;禁用tab，使用C-c k触发
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expend)

(yas-global-mode t)

(provide 'init-yasnippet)

;; init-yasnippet.el ends here
