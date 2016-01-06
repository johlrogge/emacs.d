(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(add-hook 'rust-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 (concat "rustc " buffer-file-name))))
