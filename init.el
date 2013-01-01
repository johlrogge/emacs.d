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
(add-to-list 'load-path "~/.emacs.d/3rd/")
(add-to-list 'load-path "~/.emacs.d/ext")

(setq inhibit-splash-screen t)
(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)

(tool-bar-mode -1)

(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist 
      (cons '("\\.persona" . markdown-mode)
	    (cons '("\\.md" . markdown-mode) auto-mode-alist)))

(load (expand-file-name "/home/johlrogge/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")

(load  "hippie-settings.el")
(load "parencycle-settings.el")

(autoload 'sibilant-mode "sibilant-mode.el" "Major mode for editing Sibilant" t)
(setq auto-mode-alist
      (cons '("\\.sibilant" . sibilant-mode) auto-mode-alist))

