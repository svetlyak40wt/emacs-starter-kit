(eval-after-load 'org
  `(progn
     (defun org-mode-config ()
       (local-set-key (kbd "C-c a l") 'org-agenda-list)
       (local-set-key (kbd "C-c a t") 'org-timeline)

       (setq org-feed-alist
             '(("Input from evernote"
                "https://zapier.com/engine/rss/88023/40wt-inbox/"
                "~/Yandex.Disk.localized/txt/todo.org" "INBOX")))
       (setq org-export-backends '(html md)))
     
     (add-hook 'org-mode-hook 'org-mode-config)))
