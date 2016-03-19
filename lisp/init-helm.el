;; 加载helm
(require 'helm)
(require 'helm-config)
(require 'helm-eshell)
(require 'helm-files)
(require 'helm-grep)

(helm-mode 1)
(helm-autoresize-mode 1)
(setq helm-split-window-in-side-p            t
      helm-quick-update                      t
      helm-move-to-line-cycle-in-source      t
      helm-ff-search-library-in-sexp         t
      helm-M-x-fuzzy-match                   t
      helm-buffers-fuzzy-matching            t
      helm-locate-fuzzy-match                t
      helm-recentf-fuzzy-match               t
      helm-scroll-amount                     8
      helm-ff-file-name-history-use-recentf  t)
(provide 'init-helm)
