(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)


(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))


;; Add in your own as you wish:
(defvar my-packages '(starter-kit
                      starter-kit-lisp
                      starter-kit-bindings
                      color-theme-solarized
                      mustache-mode
                      python
                      pymacs
                      flymake-python-pyflakes
                      flymake-cursor
                      whitespace
                      expand-region
                      ace-jump-mode
                      auto-complete ;; for jedi
                      fuzzy ;; for jedi
                      iy-go-to-char ;; move to the next occurence of the char
                      yasnippet)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
        (package-install p)))


;; el-get initialization
;; Нужно для установки http://tkf.github.io/emacs-jedi/

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get 'sync)
;; end of el-get init

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
