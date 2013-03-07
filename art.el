(load (expand-file-name "~/pizzbook/lisp/quicklisp/slime-helper.el") t)
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")


;; KEYBINDINGS

;; вместо M-x
(global-set-key (kbd "C-x C-m") 'execute-extended-command)

(global-set-key (kbd "C-c C-s") 'slime-selector)
(global-set-key (kbd "C-c m") 'set-mark-command)
(global-set-key (kbd "C-c z") 'zap-to-char)

;; используем C-w для удаления слова с опечаткой и последующего набора его заново
;; https://sites.google.com/site/steveyegge2/effective-emacs/#item3
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "M-z") 'undo)

