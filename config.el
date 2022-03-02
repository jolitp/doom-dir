

;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Personal information
(setq
      user-full-name "João Luís Teixeira Pinto"
      user-mail-address "jolitp@gmail.com"
)

;; last working config
;; (setq doom-font (font-spec :family "Victor Mono"
;;                            :size 32
;;                            :weight 'medium
;;                 )

;;       doom-variable-pitch-font (font-spec :family "sans"
;;                                           :size 32
;;                                )
;; )
;; last working config

(setq doom-font (font-spec :family "Source Code Pro"
                           :size 32
                           :weight 'medium
                )

      doom-variable-pitch-font (font-spec :family "Fira Sans"
                                          :size 32
                               )
)

(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t
  )
)

(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic)
)

(setq doom-theme 'doom-one)

(setq display-line-numbers-type 'relative)

(setq confirm-kill-emacs nil)

(setq org-directory "~/Dropbox/org/")

(after! org
  (setq
    org-ellipsis " ▼ "
  )
)

(after! org
  (setq
;;   org-superstar-headline-bullets-list '("◉" "●" "○" "◆" "●" "○" "◆")
     org-superstar-headline-bullets-list
     '(
;;     "α" "β" "γ" "δ" "ε" "ζ" "η" "θ" "ι" "κ" "λ"     ;; greek
;;     "μ" "ν" "ξ" "ο" "π" "σ" "τ" "υ" "φ" "χ" "ψ" "ω"  ;; lower letters

;;     "♠" "♥" "♦" "♣" "♤" "♡" "♢" "♧"             ;; card suits

;; "⓪" ;; starts at zero?
       "①" "②" "③" "④" "⑤" "⑥" "⑦" "⑧" "⑨" "⑩" ;; empty
       "⑪" "⑫" "⑬" "⑭" "⑮" "⑯" "⑰" "⑱" "⑲" "⑳" ;; circled
       "㉑" "㉒" "㉓" "㉔" "㉕" "㉖" "㉗" "㉘" "㉙" "㉚" ;; numbers
       "㉛" "㉜" "㉝" "㉞" "㉟" "㊱" "㊲" "㊳" "㊴" "㊵"
       "㊶" "㊷" "㊸" "㊹" "㊺" "㊻" "㊼" "㊽" "㊾" "㊿"

;;    "❶" "❷" "❸" "❹" "❺" "❻" "❼" "❽" "❾" "➓" ;; filled circled numbers
     )
  )
)

(after! org
  (setq
   org-superstar-item-bullet-alist '((?+ . ?✦) (?- . ?➤))
  )
)

(after! org
  (setq
   org-hide-emphasis-markers t
  )
)

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

(setq org-roam-directory "~/Dropbox/org/roam")
(setq org-roam-dailies-directory "~/Dropbox/org/roam/daily")
