(eval-after-load 'org
  `(progn
     (defun org-mode-config ()
       (define-key org-mode-map (kbd "C-c a l") 'org-agenda-list)
       (define-key org-mode-map (kbd "C-c a t") 'org-timeline)
       (define-key org-mode-map (kbd "C-x C-k") 'org-cut-subtree)

       (setq org-feed-alist
             '(("Input from evernote"
                "https://zapier.com/engine/rss/88023/40wt-inbox/"
                "~/Yandex.Disk.localized/txt/todo.org" "INBOX")))
       (setq org-export-backends '(html md)))
     
     (add-hook 'org-mode-hook 'org-mode-config)))
