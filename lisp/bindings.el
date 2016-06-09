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
;;����org-mode�Ŀ�ݼ�
(global-set-key (kbd "C-c a")           'org-agenda)
(global-set-key (kbd "C-c l")           'org-store-link)
(global-set-key (kbd "C-c c")           'org-capture)
(global-set-key (kbd "C-c a")           'org-agenda)
(global-set-key (kbd "C-c b")           'org-iswitchb)

;;���뷨�л����ȼ���ͻ����
(global-set-key [?\S- ]                 'set-mark-command)

;;���ź��Զ��ӿո�
(global-set-key (kbd ",")               (lambda ()(interactive)(insert ", ")))

;;HELM��ݼ�
(global-set-key (kbd "M-x")             'helm-M-x)
(global-set-key (kbd "M-y")		'helm-show-kill-ring)
(global-set-key (kbd "C-c h")		'helm-command-prefix)
(global-set-key (kbd "C-x b")		'helm-mini)
(global-set-key (kbd "C-x C-f")		'helm-find-files)
(global-set-key (kbd "C-x C-b")		'helm-buffers-list)
(global-set-key (kbd "C-s")		'helm-occur)
(global-set-key (kbd "C-h SPC")		'helm-all-mark-rings)
(global-set-key (kbd "C-x a")      	'helm-apropos)



;;��F9�����ٱ���C++��
;;(global-set-key [(f9)]                  'quick-compile)

;;��C-c i����ת����������
;;(global-set-key (kbd "C-c i")         'semantic-ia-fast-jump)

;;��bash�еĻ�ɾ���ʣ�Ҳ������������
(global-set-key (kbd "C-M-h")           'backward-kill-word)

;;(��������ļ��б��У�ѡ��Ҫ�򿪵��ļ��������ʵ��)
;;(global-set-key (kbd "C-x f")         'recentf-ido-find-file)

;;(���뵱ǰ���ڣ���д���ͻ���gtd��ʱ�򣬾�����������Ϊ�ļ�����һ����)
;;(global-set-key (kbd "C-x t")           'insert-current-date)

;;(���뵱ǰ�ļ�������·�������Ҳ�Ƚ�ʵ��)
;;(global-set-key (kbd "<f8>")            'insert-current-file-fill-path)

;;��ת��ĳһ�У���û��vim�е�:n��
(global-set-key (kbd "M-g")             'goto-line)
;;����һ�����ʣ�ֻҪ������ڵ����ϣ��Ϳ��Ը�����������
;;(global-set-key (kbd "C-x w")        'copy-word)

;;emacs��û�������ݼ��ģ�ֻ���Լ�ȥʵ���ˡ���vim�У�yy�Ϳ�����
;;(global-set-key (kbd "C-x y")        'copy-line)

;;���ٵĶԴ������ע���뷴ע��
(global-set-key (kbd "C-c C-b")         'comment-or-uncomment-region)
;;�������е�ĳ����ĸ
;;(define-key global-map (kbd "C-c a") 'wy-go-to-char)

(provide 'bindings)
