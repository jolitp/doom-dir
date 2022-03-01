

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

(progn
  (progn
    (face-spec-set 'org-level-5 ;; originally copied from org-level-8
      (org-compatible-face
          nil ;; not inheriting from outline-9 because that does not exist
        '((((class color) (min-colors 16) (background light))
           (:foreground "yellow"))
          (((class color) (min-colors 16) (background dark))
           (:foreground "yellow"))
          (((class color) (min-colors 8))
           (:foreground "yellow")))))

    (face-spec-set 'org-level-6 ;; originally copied from org-level-8
      (org-compatible-face
          nil ;; not inheriting from outline-9 because that does not exist
        '((((class color) (min-colors 16) (background light))
           (:foreground "orange"))
          (((class color) (min-colors 16) (background dark))
           (:foreground "orange"))
          (((class color) (min-colors 8))
           (:foreground "orange")))))

    (face-spec-set 'org-level-7 ;; originally copied from org-level-8
      (org-compatible-face
          nil ;; not inheriting from outline-9 because that does not exist
        '((((class color) (min-colors 16) (background light))
           (:foreground "purple"))
          (((class color) (min-colors 16) (background dark))
           (:foreground "purple"))
          (((class color) (min-colors 8))
           (:foreground "purple")))))

    (face-spec-set 'org-level-8 ;; originally copied from org-level-8
      (org-compatible-face
          nil ;; not inheriting from outline-9 because that does not exist
        '((((class color) (min-colors 16) (background light))
           (:foreground "gray"))
          (((class color) (min-colors 16) (background dark))
           (:foreground "gray"))
          (((class color) (min-colors 8))
           (:foreground "gray")))))

  )
)
    ;; (defface org-level-9 ;; originally copied from org-level-8
    ;;   (org-compatible-face
    ;;       nil ;; not inheriting from outline-9 because that does not exist
    ;;     '((((class color) (min-colors 16) (background light))
    ;;        (:foreground "brown"))
    ;;       (((class color) (min-colors 16) (background dark))
    ;;        (:foreground "brown"))
    ;;       (((class color) (min-colors 8))
    ;;        (:foreground "brown"))))
    ;;   "Face used for level 9 headlines."
    ;;   :group 'org-faces)
    ;; (setq org-level-faces (append org-level-faces (list 'org-level-9)))
    ;; (setq org-n-level-faces (length org-level-faces))))

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

(setq org-roam-directory "~/Dropbox/org/roam")
(setq org-roam-dailies-directory "~/Dropbox/org/roam/daily")
