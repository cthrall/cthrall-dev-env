(set-default-font "-raster-ProFontWindows-normal-r-normal-normal-13-97-96-96-c-*-iso10646-1")
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(global-set-key [f5] 'font-lock-fontify-buffer)
(setq load-path (cons (expand-file-name "~") load-path))
(setq load-path (cons (expand-file-name "~/emacs") load-path))
(setq load-path (cons (expand-file-name "~/emacs/python-mode") load-path))
(setq load-path (cons (expand-file-name "~/emacs/nxml-mode") load-path))

(setq auto-mode-alist (cons '("\\.js$" . javascript-mode)
			    auto-mode-alist))
(setq auto-mode-alist (cons '("\\.asp$" . javascript-mode)
			    auto-mode-alist))
(autoload 'javascript-mode "javascript.elc" "JavaScript mode" t)

(setq auto-mode-alist (cons '("\\.py$" . python-mode)
			    auto-mode-alist))
(autoload 'python-mode "python-mode.elc" "Python mode" t)

(setq auto-mode-alist (cons '("\\.php$" . php-mode)
			    auto-mode-alist))
(autoload 'php-mode "php-mode.elc" "PHP mode" t)

(setq auto-mode-alist  (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\|grxml\\)\\'" . nxml-mode)
	      auto-mode-alist))
(autoload 'nxml-mode "rng-auto.el" "XML mode" t)

(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(case-fold-search t)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )
