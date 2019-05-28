(defun wurstmacs/init ()
    (require 'better-defaults)
    (require 'package)
    ;; Evil gives us vim bindings
    (require 'evil)
    (evil-mode)
    ;; for debuging missing parens.
    (show-paren-mode 1)
    ;; BEGIN use-package configuration
    (setq package-enable-at-startup nil) ; do not load packages at startup
    ;; Get new packages from these repositorys
    (setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                            ("gnu"       . "http://elpa.gnu.org/packages/")
                            ("melpa"     . "https://melpa.org/packages/")
                            ))
    (package-initialize)

    ;; Bootstrap `use-package'
    (unless (package-installed-p 'use-package) ; unless it is already installed
    (package-refresh-contents) ; updage packages archive
    (package-install 'use-package)) ; and install the most recent version of use-package

    (require 'use-package) ; let us now use use-package for loading packages
    ;; END use-package configuration


  )
(provide 'core-wurstmacs)
