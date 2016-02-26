(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fancy-splash-image nil)
 '(inhibit-startup-screen t)
 '(org-agenda-files
   (quote
    ("~/Dropbox/Apps/Plain.txt/reading.txt" "~/Dropbox/Apps/Plain.txt/shopping.txt" "~/org/notes.org")))
 '(org-babel-load-languages (quote ((sh . t) (emacs-lisp . t))))
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-linum-mode t)
(setq-default indent-tabs-mode nil)

(add-to-list 'load-path "~/.emacs.d/3rd/")
(add-to-list 'load-path "~/.emacs.d/custom/")
(add-to-list 'load-path "~/.emacs.d/ext/")
(add-to-list 'load-path "~/.emacs.d/3rd/less-css-mode")
(add-to-list 'load-path "~/.emacs.d/3rd/helm")
(add-to-list 'load-path "~/.emacs.d/3rd/helm-ls-git")
(add-to-list 'load-path "~/.emacs.d/3rd/flyspell")
(add-to-list 'load-path "~/.emacs.d/3rd/dash")
(add-to-list 'load-path "~/.emacs.d/3rd/smartparens")
(add-to-list 'load-path "~/.emacs.d/3rd/openscad")
(add-to-list 'load-path "~/.emacs.d/3rd/rust-mode")
(add-to-list 'load-path "~/.emacs.d/3rd/magit/lisp")
(add-to-list 'load-path "~/.emacs.d/3rd/magit")
(add-to-list 'load-path "~/.emacs.d/3rd/arduino-mode")
(add-to-list 'load-path "~/.emacs.d/3rd/ergoemacs-mode")

(setq inhibit-splash-screen t)
(require 'color-theme)

(color-theme-initialize)
(color-theme-clarity)

(tool-bar-mode -1)

(autoload 'flyspell-mode "flyspell-1.7p.el" "On-the-fly spelling checker." t)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'js-mode-hook 'flyspell-prog-mode) 

(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist 
      (cons '("\\.persona" . markdown-mode)
	    (cons '("\\.md" . markdown-mode) auto-mode-alist)))

(autoload 'scad-mode "scad-mode.el" "Major mode for open SCAD-files")
(setq auto-mode-alist 
      (cons '("\\.scad" . scad-mode) auto-mode-alist))

(autoload 'less-css-mode "less-css-mode.el" "Major mode for editing less files" t)
(setq auto-mode-alist 
      (cons '("\\.less" . less-css-mode) auto-mode-alist))

(autoload 'arduino-mode "arduino-mode.el" "Major mode for editing arduino files" t)
(setq auto-mode-alist
      (cons '("\\.pde" . arduino-mode) auto-mode-alist))

(load (expand-file-name "/home/johlrogge/quicklisp/slime-helper.el"))

(setq inferior-lisp-program "sbcl")

(load "org-settings.el")
(load "hippie-settings.el")
(load "navigation.el")
(load "rust-mode.el")
(load "helm-cfg")
(load "magit-cfg")
(load "ergoemacs-cfg")

(global-set-key "\C-\M-_" 'unscroll)
(put 'upcase-region 'disabled nil)
