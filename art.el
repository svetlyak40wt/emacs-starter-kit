(load (expand-file-name "~/pizzbook/lisp/quicklisp/slime-helper.el") t)
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")



;; KEYBINDINGS

(global-set-key "\C-c\C-s" 'slime-selector)
(global-set-key "\C-c\C-c" 'set-mark-command)

;; (define-key blah-mode-map "\C-c\C-s" 'slime-selector)

;; вместо M-x
(global-set-key "\C-x\C-m" 'execute-extended-command)

;; используем C-w для удаления слова с опечаткой и последующего набора его заново
;; https://sites.google.com/site/steveyegge2/effective-emacs/#item3
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\M-z" 'undo)
