(add-to-list 'load-path "~/.emacs.d/better-defaults" )
(add-to-list 'load-path "~/.emacs.d/evil" )
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

;; BEGIN default key bindings
(use-package general :ensure t)
(require 'general)
(general-define-key
 "C-'" 'avy-goto-word-1
 "C-s" 'swiper             ; search for string in current buffer
 "M-x" 'counsel-M-x        ; replace default M-x with ivy backend
 )

(general-define-key
 :prefix "C-c"
 ;; bind to simple key press

 )

(general-define-key
 :states '(normal visual insert emacs)
 :prefix "SPC"
 :non-normal-prefix "C-SPC"
 "b" '(:ignore t :which-key "buffer")
 "bs" 'ivy-switch-buffer
 "f" '(:ignore t :which-key "files")
 "ff" 'counsel-find-file  ; find file using ivy
 "fr" 'counsel-recentf    ; find recently edited files
 "p" '(:ignore t :which-key "project")
 "pf" 'counsel-git        ; find file in git project
 "pg" 'counsel-git-grep   ; find string in git project

 ;; simple command
 "'"   '(iterm-focus :which-key "iterm")
 "?"   '(iterm-goto-filedir-or-home :which-key "iterm - goto dir")
 "/"   'counsel-ag
 "TAB" '(switch-to-other-buffer :which-key "prev buffer")
 "SPC" '(avy-goto-word-or-subword-1  :which-key "go to char")

 ;; Applications
 "a" '(:ignore t :which-key "Applications")
 "ar" 'ranger
 "ad" 'dired)
;; END default key bindings
(use-package counsel :ensure t)
(use-package ivy :ensure t)
(use-package avy :ensure t
  :commands (avy-goto-word-1))
;; Shows us options as we type key bindings
(use-package which-key
  :ensure t
  :init (which-key-mode))
;; best theme in the world
(use-package base16-theme
  :ensure t
  :config
  (load-theme 'base16-eighties t))
;; use doom - emacs wounderfull modeline
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config (
           setq 
           doom-modeline-height 25
           doom-modeline-icon t
           doom-modeline-major-mode-icon t
           doom-modeline-minor-modes t
           )
  )
(use-package all-the-icons
  :ensure t
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (doom-modeline which-key use-package general counsel base16-theme avy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
