(load (expand-file-name "~/pizzbook/lisp/quicklisp/slime-helper.el") t)
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")

(global-set-key "\C-c\C-s" 'slime-selector)
(global-set-key "\C-c\C-c" 'set-mark-command)

;; (define-key blah-mode-map "\C-c\C-s" 'slime-selector)
