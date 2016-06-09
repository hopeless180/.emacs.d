;; 加载helm
(require 'helm)
(require 'helm-config)

(helm-mode 1)
(helm-autoresize-mode 1)

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p		 t
      helm-move-to-line-cycle-in-source		 t
      helm-ff-search-library-in-sexp		 t
      helm-M-x-fuzzy-match			 t
      helm-buffers-fuzzy-matching		 t
      helm-locate-fuzzy-match			 t
      helm-recentf-fuzzy-match			 t
      helm-scroll-amount                         8
      helm-ff-file-name-history-use-recentf	 t
      helm-semantic-fuzzy-match			 t
      helm-imenu-fuzzy-match			 t
      helm-apropos-fuzzy-match			 t
      helm-lisp-fuzzy-completion		 t
      )

(define-key helm-map (kbd "<tab>")	'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i")	'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")	'helm-select-action) ; list actions using C-z
(provide 'init-helm)
