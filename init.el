

;;; init.el -*- lexical-binding: t; -*-
(doom!

       :input

       :completion

       (company           ; the ultimate code completion backend
       ;; +childframe
       ;; +tng
        )

       (vertico           ; the search engine of the future
        +icons
        )

       :ui

       doom              ; what makes DOOM look the way it does

       doom-dashboard    ; a nifty splash screen for Emacs

       ;;doom-quit       ; DOOM quit-message prompts when you quit Emacs

       (emoji            ; 🙂
       ;; +ascii
       ;; +github
        +unicode
       )

       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW

      ;; hydra

       (modeline          ; snazzy, Atom-inspired modeline, plus API
       ;; +light
        )

       unicode           ; extended unicode support for various languages

       vc-gutter         ; vcs diff in the fringe

       (window-select     ; visually switch windows
        +numbers
        )

       zen               ; distraction-free coding or writing

       :editor

       (evil               ; come to the dark side, we have cookies
        +everywhere
        )

       snippets          ; my elves. They type so I don't have to

       :emacs

       (dired             ; making dired pretty [functional]
        +ranger
        +icons
        )

       (ibuffer          ; interactive buffer management
        +icons
        )

      ;; (undo             ; persistent, smarter undo for your inevitable mistakes
      ;;  +tree
      ;;  )

       vc                ; version-control and Emacs, sitting in a tree

       :term

       :checkers

       grammar             ; tasing grammar mistake every you make

       :tools

       (lsp
        +peek          ; M-x vscode
       ;; +eglot
        )

       (magit             ; a git porcelain for Emacs
        +forge
        )

       pdf               ; pdf enhancements

       rgb               ; creating color strings

       :lang

       data              ; config/data formats

       emacs-lisp        ; drown in parentheses

       (gdscript          ; the language you waited for
        +lsp
       )

       (javascript        ; all(hope(abandon(ye(who(enter(here))))))
        +slp
        )

       (json              ; At least it ain't XML
        +lsp
        )

       latex             ; writing papers in Emacs has never been so fun

       ledger            ; be audit you can be

       markdown          ; writing docs for people to ignore

       (org              ; organize your plain life in plain text
       ;; +brain
        +dragndrop
       ;; +gnuplot
       ;; +hugo
       ;; +ipython
        +journal
       ;; +jupyter
        +noter
       ;; +pandoc
        +pomodoro
        +present
        +pretty
        +roam2
        )

       (python            ; beautiful is better than ugly
        +lsp
        )

       (web               ; HTML and CSS (SCSS/SASS/LESS/Stylus) support.
        +lsp
        )

       :app

       calendar

       :config
       ;;literate
       (default
        +bindings
        +smartparens
        )

)
