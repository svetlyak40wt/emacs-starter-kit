(defun python-config ()

  (local-set-key (kbd "RET") 'newline-and-indent)
  
  ;; Snippets
  (yas-minor-mode)
  (yas/load-directory "~/.emacs.d/snippets")
  ;(flymake-python-pyflakes-load)
  )

(require 'python)
(autoload 'python-mode "python-mode" "Python editing mode." t)
(add-hook 'python-mode-hook 'python-config)
