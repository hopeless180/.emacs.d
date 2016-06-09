(global-set-key (kbd "C-x \\")          'align-regexp)
(global-set-key (kbd "M-/")             'hippie-expand)
(global-set-key [f1]                    'menu-bar-mode)
(define-key global-map (kbd "C-+")      'text-scale-increase)
(define-key global-map (kbd "C--")      'text-scale-decrease)
(global-set-key (kbd "C-x C-p")         'find-file-at-point)
(global-set-key (kbd "C-c y")           'bury-buffer)
(global-set-key (kbd "C-c r")           'revert-buffer)
(global-set-key (kbd "M-`")             'file-cache-minibuffer-complete)
(windmove-default-keybindings) ;; Shift+direction
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1))) ;; back one
(global-set-key (kbd "C-x C-o") (lambda () (interactive) (other-window 2))) ;; forward two 
(global-set-key (kbd "C-x ^")           'join-line)
(define-key isearch-mode-map (kbd "C-o")
  (lambda () (interactive)
    (let ((case-fold-search isearch-case-fold-search))
      (occur (if isearch-regexp
                 isearch-string
               (regexp-quote isearch-string))))))
(define-key global-map (kbd "C-x C-r")  'rgrep)
;;设置org-mode的快捷键
(global-set-key (kbd "C-c a")           'org-agenda)
(global-set-key (kbd "C-c l")           'org-store-link)
(global-set-key (kbd "C-c c")           'org-capture)
(global-set-key (kbd "C-c a")           'org-agenda)
(global-set-key (kbd "C-c b")           'org-iswitchb)

;;输入法切换的热键冲突问题
(global-set-key [?\S- ]                 'set-mark-command)

;;逗号后自动加空格
(global-set-key (kbd ",")               (lambda ()(interactive)(insert ", ")))

;;HELM快捷键
(global-set-key (kbd "M-x")             'helm-M-x)
(global-set-key (kbd "M-y")		'helm-show-kill-ring)
(global-set-key (kbd "C-c h")		'helm-command-prefix)
(global-set-key (kbd "C-x b")		'helm-mini)
(global-set-key (kbd "C-x C-f")		'helm-find-files)
(global-set-key (kbd "C-x C-b")		'helm-buffers-list)
(global-set-key (kbd "C-s")		'helm-occur)
(global-set-key (kbd "C-h SPC")		'helm-all-mark-rings)
(global-set-key (kbd "C-x a")      	'helm-apropos)



;;绑定F9到快速编译C++上
;;(global-set-key [(f9)]                  'quick-compile)

;;绑定C-c i到跳转函数功能上
;;(global-set-key (kbd "C-c i")         'semantic-ia-fast-jump)

;;（bash中的回删单词，也是这三个键）
(global-set-key (kbd "C-M-h")           'backward-kill-word)

;;(在最近打开文件列表中，选择要打开的文件，这个很实用)
;;(global-set-key (kbd "C-x f")         'recentf-ido-find-file)

;;(插入当前日期，在写博客或者gtd的时候，经常用日期作为文件名的一部分)
;;(global-set-key (kbd "C-x t")           'insert-current-date)

;;(插入当前文件的完整路径，这个也比较实用)
;;(global-set-key (kbd "<f8>")            'insert-current-file-fill-path)

;;跳转到某一行，是没有vim中的:n快
(global-set-key (kbd "M-g")             'goto-line)
;;复制一个单词，只要光标落在单词上，就可以复制整个单词
;;(global-set-key (kbd "C-x w")        'copy-word)

;;emacs是没有这个快捷键的，只能自己去实现了。在vim中，yy就可以了
;;(global-set-key (kbd "C-x y")        'copy-line)

;;快速的对代码进行注释与反注释
(global-set-key (kbd "C-c C-b")         'comment-or-uncomment-region)
;;跳到此行的某个字母
;;(define-key global-map (kbd "C-c a") 'wy-go-to-char)

(provide 'bindings)
