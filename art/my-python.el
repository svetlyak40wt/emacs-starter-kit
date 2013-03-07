(eval-after-load 'python
  `(progn
     (defun python-config ()
       (local-set-key (kbd "RET") 'newline-and-indent)
  
       ;; Snippets
       (yas-minor-mode)
       (yas/load-directory "~/.emacs.d/snippets"))

       (add-hook 'python-mode-hook 'python-config)))
