

;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; start ------------------------------ Checkers / Grammar / Langtool
(use-package! langtool
  :commands (langtool-check
             langtool-check-done
             langtool-show-message-at-point
             langtool-correct-buffer)
  :init (setq langtool-default-language "pt-BR")
  :config
  (unless (or langtool-bin
              langtool-language-tool-jar
              langtool-java-classpath)
    (cond (IS-LINUX
          (setq langtool-java-classpath "/usr/share/languagetool:/usr/share/java/languagetool/*")))))
;; end -------------------------------- Checkers / Grammar / Langtool

;; start ------------------------------ fixes / remove exit confirmation message
(setq confirm-kill-emacs nil)
;; end -------------------------------- fixes / remove exit confirmation message

;; (setq sentence-end-double-space t)

(setq max-lisp-eval-depth 10000)

;; start personal information
(setq
      user-full-name "João Luís Teixeira Pinto"
      user-mail-address "jolitp@gmail.com"
)
;; end personal information

;; start -------------------------------------------------- looks / fonts config
(setq doom-font (font-spec :family "Cascadia Code"
                           :size 32
                           :weight 'light
                )

      doom-variable-pitch-font (font-spec :family "Source Sans 3"
                                          :size 32
                                          :weight 'light
                               )
)
;; end -------------------------------------------------- looks / fonts config

;; start --------------------------------------- italic for comments and keywords
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic)
)
;; end ----------------------------------------- italic for comments and keywords

;; start theme config
(setq doom-theme 'doom-one)
;; end theme config

;; start line numbers config ------------------------- start line numbers config
(setq display-line-numbers-type 'relative)
;; end line numbers config ----------------------------- end line numbers config

;; start ----------------------------------------------------- org / super agenda
(after! org-agenda
  (use-package! org-super-agenda
   :init
   (setq org-super-agenda-groups
         '(
           (:name "today"
                  :time-grid t
                  :scheduled today)
           (:name "due today"
                  :deadline today)
           (:name "overdue"
                  :deadline past)
           (:name "due soon"
                  :deadline future)
           )
   )
   :config
   (org-super-agenda-mode) ;; enable mode
  )
)
;; end ----------------------------------------------------- org / super agenda

(after! org
)

;; start ---------------------------------- org / DOCT: Declarative Org Capture Templates
;; don't have any templates in mind at the monment
;; end ---------------------------------- org / DOCT: Declarative Org Capture Templates

;; start ---------------------------------- org / hide blank lines in folded view
(after! org
  (setq org-cycle-separator-lines 0)
)
;; end ------------------------------------ org / hide blank lines in folded view

;; start ------------------- org / images
(after! org
  (setq org-image-actual-width nil)
)
;; end --------------------- org / images

(after! org
  (setq org-agenda-start-with-log-mode t)
  (setq org-log-done 'time)
  (setq org-log-into-drawer t)
)

;; start ------------------------------------------------------- org files location
(setq org-directory "~/Dropbox/org/")
;; end --------------------------------------------------------- org files location

;; start --------------------------------------------- org / startup / folded
(after! org
  (setq org-startup-folded t)
)
;; end ----------------------------------------------- org / startup / folded

;; start --------------------------------------------- org / startup / folded
(after! org
  (setq org-startup-indented nil)
)
;; end ----------------------------------------------- org / startup / folded

;; start ---------------------------------------------- org / styles / ellipsis
(after! org
  (setq
    org-ellipsis " ▼ "
  )
)
;; end ------------------------------------------------ org / styles / ellipsis

;; start ------------------------------------------------ org / styles / bullets
(after! org
  (setq
     org-superstar-headline-bullets-list
     '(
;;     "⓪"                                           ;; starts at zero?
       "①" "②" "③" "④" "⑤" "⑥" "⑦" "⑧" "⑨" "⑩" ;; empty
       "⑪" "⑫" "⑬" "⑭" "⑮" "⑯" "⑰" "⑱" "⑲" "⑳" ;; circled
       "㉑" "㉒" "㉓" "㉔" "㉕" "㉖" "㉗" "㉘" "㉙" "㉚" ;; numbers
       "㉛" "㉜" "㉝" "㉞" "㉟" "㊱" "㊲" "㊳" "㊴" "㊵"
       "㊶" "㊷" "㊸" "㊹" "㊺" "㊻" "㊼" "㊽" "㊾" "㊿"

     )
  )
)
;; end -------------------------------------------------- org / styles / bullets

;; start -------------------------------------------- org / styles / list bullets
(after! org
  (setq
   org-superstar-item-bullet-alist '((?+ . ?✦) (?- . ?•))
  )
)
;; end ---------------------------------------------- org / styles / list bullets

;; start ---------------------------------------- org / styles / emphasis markers
(after! org
  (setq
   org-hide-emphasis-markers t
  )
)
;; end ------------------------------------------ org / styles / emphasis markers

;; start --------------------------------------------- org-appear configuration
(after! org

  (add-hook 'org-mode-hook 'org-appear-mode)

  (setq org-appear-autolinks t)

  (setq org-pretty-entities t)
  (setq org-appear-autosubmarkers t)

  (setq org-appear-autoentities t)

  (setq org-appear-autokeywords t)

  (setq org-appear-delay 1)

  (setq org-appear-trigger 'always)

)
;; end ----------------------------------------------- org-appear configuration

;; start ------------------------------------------ org / TODOs states / keywords
(after! org
  (setq org-todo-keywords
    (quote (
            (sequence "TODO(t)" "NEXT(n)" "DOING(D)" "|""DONE(d)" "SKIP(s)")
            (sequence "WAITING(w@/!)" "|" "CANCELLED(c@/!)")
            (sequence "|" "YES(Y)" "MAYBE(M)" "NO(N)")
            )
    )
  )
)
;; end -------------------------------------------- org / TODOs states / keywords

;; start ------------------------------------------ org / TODOs states / colors
(after! org
  (setq org-todo-keyword-faces
    (quote (
            ("TODO" :foreground "#ff4500" :weight bold)
            ("NEXT" :foreground "#4876ff" :weight bold)
            ("DOING" :foreground "#ffd700" :weight bold)
            ("SKIP" :foreground "#00eeee"      :weight bold)
            ("DONE" :foreground "#32cd32" :weight bold)

            ("WAITING"   :foreground "#ffd700"     :weight bold)
            ("CANCELLED" :foreground "#ee82ee" :weight bold)

            ("YES"   :foreground "#2E8E27"    :weight bold)
            ("MAYBE" :foreground "#ff8700"  :weight bold)
            ("NO"    :foreground "#8b0000"     :weight bold)
           )
    )
  )
)
;; end --------------------------------------------- org / TODOs states / colors

;; start ------------------------------------------ org / TODOs states / bullets
(after! org-superstar
  (setq org-superstar-special-todo-items t)
  (setq org-superstar-todo-bullet-alist
        '(
          ("TODO" . ?⛶)
          ("NEXT" . ?➔)
          ("DOING" . ?🏃)
          ("SKIP" . ?⮫)
          ("DONE" . ?✓)

          ("WAITING" . ?✋)
          ("CANCELLED" . ?✘)

          ("YES" . ?👍)
          ("MAYBE" . ?🤷)
          ("NO" . ?👎)
         )
  )
)
;; end -------------------------------------------- org / TODOs states / bullets

;; start --------------------------------------------- org / roam
(use-package! org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (setq org-roam-directory (file-truename "~/Dropbox/org/roam"))
  (setq org-roam-dailies-directory "~/Dropbox/org/roam/daily")
  (org-roam-completion-everywhere t)

  (org-roam-capture-templates
    '(("d" "default" plain
      "%?"
      :if-new (file+head "%<%Y-%m-%d,%H:%M:%S>-${slug}.org"
                         "#+title: ${title}\n#+date: %U\n")
      :unnarrowed t)
    )
  )

  (setq org-roam-dailies-capture-templates
    '(("d" "default" plain
       "* %<%H:%M>: %?"
       :if-new (file+head
               "%<%Y-%m-%d>.org"
               "#+title: %<%Y-%m-%d>\n")
      )
    )
  )
)
;; end --------------------------------------------- org / roam

;; start --------------------------- org / roam ui
(use-package! websocket
    :after org-roam)

(use-package! org-roam-ui
    ;;:after org-roam ;; or :after org
    :after org         ;; or :after org

;; normally we'd recommend hooking orui after org-roam, but since org-roam does not have
;; a hookable mode anymore, you're advised to pick something yourself
;; if you don't care about startup time, use
;;    :hook (after-init . org-roam-ui-mode)
    :config
    (setq
          org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t
;;          org-roam-ui-open-on-start t
    )
)
;; end --------------------------- org / roam ui

;; start ------------------------------------------------------ org / transclusion
(use-package! org-transclusion
  :after org
  ;; :init
  ;; (map!
  ;;  :map global-map "<f12>" #'org-transclusion-add
  ;;  :leader
  ;;  :prefix "n"
  ;;  :desc "Org Transclusion Mode" "t" #'org-transclusion-mode)
)
;; start ------------------------------------------------------ org / transclusion

(setq projectile-indexing-method 'alien) ;; default value
(setq projectile-auto-discover t)        ;; default value
(setq projectile-sort-order 'recentf)

(setq projectile-project-search-path '(
                                       ;;("~/Dropbox" . 10)
                                       ;;("~/Config" . 5)
                                       ("~/Dropbox/docs/FINANCES/ledger/")
                                       ("~/Dropbox/STUDY/books/_0_reading_now" . 3)
                                       ("~/Dropbox/STUDY/UAM - letras" . 6)
                                       ("~/dotfiles")
;;                                       ("~/github" . 1) ;; depth = 1
                                      )
)

;; start ---------------------------------- UI / Interface / Scrollbar
;;(global-yascroll-bar-mode t)
;; end ---------------------------------- UI / Interface / Scrollbar

;; start ---------------------------------- UI / lines / Evil Better Visual Line
;; (after! evil
;;   (evil-better-visual-line-on)
;; )
;; end ------------------------------------ UI / lines / Evil Better Visual Line

;; start ---------------------------------- UI / which key / on the right side
;;(after! which-key
;; (which-key-setup-side-window-right)

;; (setq which-key-popup-type 'side-window)
;; (setq which-key-side-window-location 'bottom)
;; (setq which-key-side-window-max-width 0.33)
;; (setq which-key-side-window-max-height 0.25)

(setq which-key-side-window-max-height 0.60)
(setq which-key-idle-delay 0)

(setq which-key-prefix-prefix "📁" )
;;)
;; end ------------------------------------ UI / which key / on the right side

;; start ---------------------------------- Reading / spray
()

(use-package! spray
  :config
  (setq spray-wpm 120)
  (setq spray-height 250) ; default 400
;;  (setq spray-ramp 2)
)
;; end ---------------------------------- Reading / spray
