;; (set-default-font "-raster-ProFontWindows-normal-r-normal-normal-13-97-96-96-c-*-iso10646-1")
;; (global-set-key [f5] 'font-lock-fontify-buffer)
(setq load-path (cons (expand-file-name "~") load-path))
(setq load-path (cons (expand-file-name "~/emacs") load-path))
(setq load-path (cons (expand-file-name "~/emacs/python-mode") load-path))
(setq load-path (cons (expand-file-name "~/emacs/nxml-mode") load-path))

(require 'highlight-parentheses)
(defun my-common-hook ()
  (highlight-parentheses-mode)
  )

(add-hook 'c-mode-common-hook 'my-common-hook)

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

(setq auto-mode-alist (cons '("\\.md$" . markdown-mode)
			    auto-mode-alist))
(autoload 'markdown-mode "markdown-mode.elc" "Major mode for editing Markdown files" t)

(setq org-directory "~/Documents/org")
(setq org-mobile-inbox-for-pull "~/Documents/org/flagged.org")
(setq org-mobile-directory "~/Documents/Dropbox/Apps/MobileOrg")
(setq org-mobile-files '("~/Documents/org/todo.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(inhibit-startup-screen t)
 '(transient-mark-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key [f3] 'prev-error)
(global-set-key [f4] 'next-error)
(global-set-key [f5] 'compile)

(load-theme 'wombat)

(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)

(global-set-key (kbd "C-c C-g") 'magit-status)
(setq org-todo-keywords '((sequence "TODO" "INPROGRESS" "|" "DONE")))
