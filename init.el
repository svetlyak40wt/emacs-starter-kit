(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)


(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))


;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings color-theme-solarized mustache-mode)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
        (package-install p)))




;; вместо M-x
(global-set-key "\C-x\C-m" 'execute-extended-command)

;; используем C-w для удаления слова с опечаткой и последующего набора его заново
;; https://sites.google.com/site/steveyegge2/effective-emacs/#item3
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)


(load-theme 'solarized-light t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-match ((t (:background "#e56545" :foreground "#00cdcd" :inverse-video nil :underline nil :slant normal :weight bold))) nil "подсвечиваем скобочки красненьким, чтобы можно было нормально Lisp код редактировать"))
