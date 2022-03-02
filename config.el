

;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; start personal information
(setq
      user-full-name "João Luís Teixeira Pinto"
      user-mail-address "jolitp@gmail.com"
)
;; end personal information

;; start -------------------------------------------------- looks / fonts config
(setq doom-font (font-spec :family "Source Code Pro"
                           :size 32
                           :weight 'medium
                )

      doom-variable-pitch-font (font-spec :family "Fira Sans"
                                          :size 32
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

;; start ------------------------------ fixes / remove exit confirmation message
(setq confirm-kill-emacs nil)
;; end -------------------------------- fixes / remove exit confirmation message

;; start ------------------------------------------ org / TODOs states / keywords
(after! org
  (setq org-todo-keywords
    (quote (
            (sequence "TODO(t)" "NEXT(n)" "SKIP(s)" "|" "DONE(d)")
            (sequence "WAITING(w@/!)" "|" "CANCELLED(c@/!)")
            (sequence "YES(Y)" "MAYBE(M)" "|" "NO(N)")
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

;; start --------------------------------------------- org / startup / folded
(after! org
  (setq org-startup-folded t)
)
;; end ----------------------------------------------- org / startup / folded

;; start ---------------------------------- org / hide blank lines in folded view
(after! org
  (setq org-cycle-separator-lines 0)
)
;; end ------------------------------------ org / hide blank lines in folded view

;; start ------------------------------------------------------- org files location
(setq org-directory "~/Dropbox/org/")
;; end --------------------------------------------------------- org files location

;; start --------------------------------------------------- org-roam files location
(setq org-roam-directory "~/Dropbox/org/roam")
(setq org-roam-dailies-directory "~/Dropbox/org/roam/daily")
;; end ----------------------------------------------------- org-roam files location
