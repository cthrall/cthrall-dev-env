;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(global-set-key [f5] 'font-lock-fontify-buffer)
(setq load-path (cons (expand-file-name "~") load-path))
(setq load-path (cons (expand-file-name "~/emacs") load-path))
(setq load-path (cons (expand-file-name "~/emacs/python-mode") load-path))
(setq load-path (cons (expand-file-name "~/emacs/nxml-mode") load-path))
(setq load-path (cons (expand-file-name "~/emacs/csharp-mode") load-path))

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

(setq auto-mode-alist (cons '("\\.cs$" . csharp-mode)
      		      	    auto-mode-alist))
(autoload 'csharp-mode "csharp-mode.el" "C-Sharp Mode" t)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(add-hook 'yaml-mode-hook
  '(lambda ()
     (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

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

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

;;(require 'package)
;;(add-to-list 'package-archives
;;             '("melpa" . "http://melpa.org/packages/") t)