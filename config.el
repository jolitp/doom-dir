

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

;; start ------------------------------------------------------- org files location
(setq org-directory "~/Dropbox/org/")
;; end --------------------------------------------------------- org files location

;; start --------------------------------------------------- org-roam files location
(setq org-roam-directory "~/Dropbox/org/roam")
(setq org-roam-dailies-directory "~/Dropbox/org/roam/daily")
;; end ----------------------------------------------------- org-roam files location
