;; BEGIN default key bindings
(use-package general :ensure t)
(require 'general)
;; The space leader that spacemacs made popular
(general-create-definer leader-SPC
 :states '(normal visual insert emacs)
 :prefix "SPC"
 :non-normal-prefix "C-SPC")

(general-define-key
 "C-'" 'avy-goto-word-1
 "C-s" 'swiper             ; search for string in current buffer
 "M-x" 'counsel-M-x        ; replace default M-x with ivy backend
 )

(general-define-key
 :prefix "C-c"
 ;; bind to simple key press

 )

(leader-SPC
 "a" '(:ignore t :which-key "applications")
 "ar" 'ranger
 "ad" 'dired
 "b" '(:ignore t :which-key "buffer")
 "bs" 'ivy-switch-buffer
 "c" '(:ignore t :which-key "compile/comments")
 "C" '(:ignore t :which-key "capture/colors")
 "e" '(:ignore t :which-key "errors")
 "f" '(:ignore t :which-key "files")
 "ff" 'counsel-find-file  ; find file using ivy
 "fr" 'counsel-recentf    ; find recently edited files
 "g" '(:ignore t :which-key "git/vc")
 "h" '(:ignore t :which-key "help")
 "i" '(:ignore t :which-key "insertion")
 "j" '(:ignore t :which-key "join/split")
 "m" '(:ignore t :which-key "major-mode-cmd")
 "n" '(:ignore t :which-key "narrow")
 "o" '(:ignore t :which-key "org")
 "oa" 'org-agenda
 "p" '(:ignore t :which-key "project")
 "pf" 'counsel-git        ; find file in git project
 "pg" 'counsel-git-grep   ; find string in git project
 "q" '(:ignore t :which-key "session/quit")
 "r" '(:ignore t :which-key "registers")
 "s" '(:ignore t :which-key "search")
 "S" '(:ignore t :which-key "spelling")
 "t" '(:ignore t :which-key "toggle/theme")
 "w" '(:ignore t :which-key "windows")
 "wv" 'split-window-right
 "ws" 'split-window-below
 "z" '(:ignore t :which-key "zoom")

 ;; simple command
 "'"   '(iterm-focus :which-key "iterm")
 "?"   '(iterm-goto-filedir-or-home :which-key "iterm - goto dir")
 "/"   'counsel-ag
 "SPC" '(avy-goto-word-or-subword-1  :which-key "avy word")
 )

(provide 'core-keybindings)
;; END default key bindings
