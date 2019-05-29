(load-file (expand-file-name "core/core-loadpaths.el" user-emacs-directory))
(require 'core-wurstmacs)
(wurstmacs/init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Yandex.Disk/org/week.org")))
 '(package-selected-packages
   (quote
    (doom-modeline which-key use-package general counsel base16-theme avy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
