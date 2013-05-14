(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(fancy-splash-image nil)
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(global-linum-mode t)
(setq-default indent-tabs-mode nil)

(add-to-list 'load-path "~/.emacs.d/3rd/")
(add-to-list 'load-path "~/.emacs.d/ext")
(add-to-list 'load-path "~/.emacs.d/3rd/less-css-mode")
(add-to-list 'load-path "~/.emacs.d/3rd/helm")
(add-to-list 'load-path "~/.emacs.d/3rd/helm-ls-git")
(add-to-list 'load-path "~/.emacs.d/3rd/flyspell")

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

(autoload 'less-css-mode "less-css-mode.el" "Major mode for editing less files" t)
(setq auto-mode-alist 
      (cons '("\\.less" . less-css-mode) auto-mode-alist))

(load (expand-file-name "/home/johlrogge/quicklisp/slime-helper.el"))

(setq inferior-lisp-program "sbcl")

(load  "hippie-settings.el")
(load "parencycle-settings.el")

(autoload 'sibilant-mode "sibilant-mode.el" "Major mode for editing Sibilant" t)
(setq auto-mode-alist
      (cons '("\\.sibilant" . sibilant-mode) auto-mode-alist))


(require 'helm-config)
(require 'helm-ls-git)
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c g") 'helm-ls-git-ls)
(global-set-key (kbd "C-c l") 'helm-locate)
(helm-mode 1)
