(defun add-to-load-path (dir) (add-to-list 'load-path dir))
(message "adding load paths")
(defconst wurstmacs-core-dir (expand-file-name
			      (concat user-emacs-directory "core/")))
(defconst user-dir (expand-file-name (concat user-emacs-directory "user/")))

(mapc 'add-to-load-path '(
                         (concat user-emacs-directory "better-defaults")
                         (concat user-emacs-directory "evil")
                         wurstmacs-core-dir
                         user-dir
                         ))
