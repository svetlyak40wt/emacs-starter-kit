(add-hook 'lisp-mode-hook (lambda ()
                            (define-key slime-mode-map (kbd "C-c x") 'execute-extended-command)
                            (define-key slime-mode-map (kbd "C-c C-c") 'set-mark-command)
                            
                            
                            (define-key paredit-mode-map (kbd "C-c [") 'paredit-forward-barf-sexp)
                            (define-key paredit-mode-map (kbd "C-c ]") 'paredit-forward-slurp-sexp)
                            (define-key paredit-mode-map (kbd "C-c M-]") 'paredit-backward-barf-sexp)
                            (define-key paredit-mode-map (kbd "C-c M-[") 'paredit-backward-slurp-sexp)

                            (define-key paredit-mode-map (kbd "C-c r") 'paredit-raise-sexp)
                            
                            
                            ))
