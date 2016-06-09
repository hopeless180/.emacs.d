(setq load-path (cons "~/.emacs.d/elpa/xml-rpc-20160430.1458" load-path))
(require 'xml-rpc-autoloads)
(setq load-path (cons "~/.emacs.d/elpa/metaweblog-20141130.605" load-path))
(require 'metaweblog-autoloads )
(setq load-path (cons "~/.emacs.d/elpa/org2blog-0.9.2/" load-path))
(require 'org2blog-autoloads)

(setq org2blog/wp-blog-alist
      '(("my-blog"
	 :url "http://erinyes.cc/xmlrpc.php"
	 :username "neun"
	 :default-title "emacs临时文章"
	 :default-categories ("org2blog" "emacs")
	 :tags-as-categories nil
	 ))
      )

(provide 'init-org2blog)


