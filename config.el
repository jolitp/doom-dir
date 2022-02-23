

;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Personal information
(setq
      user-full-name "João Luís Teixeira Pinto"
      user-mail-address "jolitp@gmail.com"
)

(setq doom-font (font-spec :family "Source Code Pro"
                           :size 32
                           :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "sans"
                                          :size 32))

(setq doom-theme 'doom-one)

(setq display-line-numbers-type 'relative)

(setq confirm-kill-emacs nil)

(setq org-directory "~/Dropbox/org/")

(setq org-roam-directory "~/Dropbox/org/roam")
(setq org-roam-dailies-directory "~/Dropbox/org/roam/daily")
