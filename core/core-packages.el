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
(provide 'core-packages)
