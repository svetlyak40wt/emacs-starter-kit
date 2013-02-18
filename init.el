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




(load-theme 'solarized-light t)

;; вместо M-x
(global-set-key "\C-x\C-m" 'execute-extended-command)

;; используем C-w для удаления слова с опечаткой и последующего набора его заново
;; https://sites.google.com/site/steveyegge2/effective-emacs/#item3
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
