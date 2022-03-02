

;;; init.el -*- lexical-binding: t; -*-
(doom!

       :input

       ;;chinese

       ;;japanese

       ;;(layout            ; auie,ctsrnm is the superior home row
       ;; +azerty
       ;; +bepo
       ;; )

       :completion

       (company           ; the ultimate code completion backend
       ;; +childframe
       ;; +tng
        )

       ;;(helm              ; the *other* search engine for love and life
       ;; +fuzzy
       ;; +childframe
       ;; )

       ;;ido               ; the other *other* search engine...

       ;;(ivy              ; a search engine for love and life
       ;; +fuzzy
       ;; +childframe
       ;; +prescient
       ;; +icons
       ;;)

       (vertico           ; the search engine of the future
        +icons
        )

       :ui

       ;; deft              ; notational velocity for Emacs

       doom              ; what makes DOOM look the way it does

       doom-dashboard    ; a nifty splash screen for Emacs

       doom-quit       ; DOOM quit-message prompts when you quit Emacs

       (emoji            ; 🙂
       ;; +ascii
       ;; +github
        +unicode
       )

       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW

      ;; hydra

       ;; indent-guides     ; highlighted indent columns

       ;; (ligatures         ; ligatures and symbols to make your code pretty again
       ;; +extra
       ;; +fira
       ;; +hasklig
       ;; +iosevka
       ;; +pragmata-pro
       ;; )

       ;; minimap           ; show a map of the code on the side

       (modeline          ; snazzy, Atom-inspired modeline, plus API
       ;; +light
        )

       ;;nav-flash         ; blink cursor line after big motions

       ;;neotree           ; a project drawer, like NERDTree for vim

       ;; ophints           ; highlight the region an operation acts on

      ;; (popup            ; tame sudden yet inevitable temporary windows
      ;;  +defaults
      ;;  +all
      ;;  )

       ;; tabs              ; a tab bar for Emacs

      ;; (treemacs          ; a project drawer, like neotree but cooler
      ;;  +lsp
      ;;  )

       unicode           ; extended unicode support for various languages

       vc-gutter         ; vcs diff in the fringe

      ;; vi-tilde-fringe   ; fringe tildes to mark beyond EOB

       (window-select     ; visually switch windows
        +numbers
        )

       ;; workspaces        ; tab emulation, persistence & separate workspaces

       ;;zen               ; distraction-free coding or writing

       :editor

       (evil               ; come to the dark side, we have cookies
        +everywhere
        )

      ;; file-templates    ; auto-snippets for empty files

      ;; fold                ; (nigh) universal code folding

       ;;(format             ; automated prettiness
       ;; +onsave
       ;; )

       ;;god               ; run Emacs commands without modifier keys

       ;;lispy             ; vim for lisp, for people who don't like vim

       ;;multiple-cursors  ; editing in many places at once

       ;;(objed             ; text object editing for the innocent
       ;; +manual
       ;; )

       ;;parinfer          ; turn lisp into python, sort of

       ;;rotate-text       ; cycle region at point between text candidates

       snippets          ; my elves. They type so I don't have to

       ;;word-wrap         ; soft wrapping with language-aware indent

       :emacs

       (dired             ; making dired pretty [functional]
        +ranger
        +icons
        )

      ;; electric          ; smarter, keyword-based electric-indent

       (ibuffer          ; interactive buffer management
        +icons
        )

       (undo             ; persistent, smarter undo for your inevitable mistakes
        +tree
        )

       vc                ; version-control and Emacs, sitting in a tree

       :term

       ;;eshell            ; the elisp shell that works everywhere

       ;;shell             ; simple shell REPL for Emacs

       ;;term              ; basic terminal emulator for Emacs

       ;;vterm             ; the best terminal emulation in Emacs

       :checkers

       ;; (syntax              ; tasing you for every semicolon you forget
       ;; +childframe
       ;; )

       ;; (spell              ; tasing you for misspelling mispelling
       ;; +flyspell
       ;; )

       ;; grammar             ; tasing grammar mistake every you make

       :tools

       ;;ansible

       ;;biblio            ; Writes a PhD for you (citation needed)

       ;; (debugger          ; FIXME stepping through code, to help you add bugs
       ;; +lsp
       ;; )

       ;;direnv

       ;; (docker
       ;; +lsp
       ;; )

       ;;editorconfig      ; let someone else argue about tabs vs spaces

       ;;ein               ; tame Jupyter notebooks with emacs

      ;; (eval      ; run code, run (also, repls)
      ;;  +overlay
      ;;  )

       ;;gist              ; interacting with github gists

       ;; (lookup              ; navigate your code and its documentation
       ;; +dictionary
       ;; +docsets
       ;; +offline
       ;; )   ; Universal jump-to & documentation lookup

       (lsp
        +peek          ; M-x vscode
       ;; +eglot
        )

       (magit             ; a git porcelain for Emacs
        +forge
        )

       ;;make              ; run make tasks from Emacs

       ;; (pass              ; password manager for nerds
       ;; +auth
       ;; )

       pdf               ; pdf enhancements

       ;;prodigy           ; FIXME managing external services & code builders

       rgb               ; creating color strings

       ;;taskrunner        ; taskrunner for all your projects

       ;;terraform         ; infrastructure as code

       ;;tmux              ; an API for interacting with tmux

       ;;upload            ; map local to remote projects via ssh/ftp

       :os

       (:if IS-MAC macos)  ; improve compatibility with macOS

       ;; (tty               ; improve the terminal Emacs experience
       ;; +osc
       ;; )

       :lang

       ;;agda              ; types of types of types of types...

       ;;beancount         ; mind the GAAP

      ;; (cc                ; C > C++ == 1
      ;;  +lsp
      ;;  )

       ;;clojure           ; java with a lisp

       ;;common-lisp       ; if you've seen one lisp, you've seen them all

       ;;coq               ; proofs-as-programs

       ;;crystal           ; ruby at the speed of c

        ;; (csharp            ; unity, .NET, and mono shenanigans
        ;; +lsp
        ;; +unity
        ;; )

       ;;(dart              ; paint ui and not much else
       ;; +lsp
       ;; +flutter
       ;; )

       data              ; config/data formats

       ;;elixir            ; erlang done right

       ;;dhall

       ;;elm               ; care for a cup of TEA?

       emacs-lisp        ; drown in parentheses

       ;;erlang            ; an elegant language for a more civilized age

       ;;ess               ; emacs speaks statistics

       ;;factor

       ;;faust             ; dsp, but you get to keep your soul

       ;;fortran           ; in FORTRAN, GOD is REAL (unless declared INTEGER)

      ;; (fsharp            ; ML stands for Microsoft's Language
      ;;  +lsp
      ;; )

       ;;fstar             ; (dependent) types and (monadic) effects and Z3

       (gdscript          ; the language you waited for
        +lsp
       )

       ;;(go          ; the hipster dialect
       ;; +lsp
       ;; )

       ;; (haskell     ; a language that's lazier than I am
       ;; +lsp
       ;; )

       ;;hy                ; readability of scheme w/ speed of python

       ;;idris             ; a language you can depend on

       ;; (java           ; the poster child for carpal tunnel syndrome
       ;; +meghanada
       ;; )

       (javascript        ; all(hope(abandon(ye(who(enter(here))))))
        +slp
        )

       (json              ; At least it ain't XML
        +lsp
        )

       ;;julia             ; a better, faster MATLAB

       ;;kotlin            ; a better, slicker Java(Script)

       latex             ; writing papers in Emacs has never been so fun

       ;;lean              ; for folks with too much to prove

       ;;ledger            ; be audit you can be

       ;;lua               ; one-based indices? one-based indices

       markdown          ; writing docs for people to ignore

       ;;nim               ; python + lisp at the speed of c

       ;;nix               ; I hereby declare "nix geht mehr!"

       ;;ocaml             ; an objective camel

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
        +roam
        )

       ;;php               ; perl's insecure younger brother

       ;;plantuml          ; diagrams for confusing people more

       ;;purescript        ; javascript, but functional

       (python            ; beautiful is better than ugly
        +lsp
        )

       ;;qt                ; the 'cutest' gui framework ever

       ;;racket            ; a DSL for DSLs

       ;;raku              ; the artist formerly known as perl6

       ;;rest              ; Emacs as a REST client

       ;; rst               ; ReST in peace

       ;; (ruby      ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;; +rails
       ;; )

      ;; (rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
      ;;  +lsp
      ;;  )

       ;;scala             ; java, but good

       ;; (scheme    ; a fully conniving family of lisps
       ;; +chez
       ;; +chibi
       ;; +chicken
       ;; +gambit
       ;; +gauche
       ;; +guile
       ;; +kawa
       ;; +mit
       ;; +racket
       ;; )

      ;; (sh                ; she sells {ba,z,fi}sh shells on the C xor
      ;;  +lsp
      ;;  +fish
      ;; )

       ;;sml

       ;;solidity          ; do you need a blockchain? No.

       ;;swift             ; who asked for emoji variables?

       ;;terra             ; Earth and Moon in alignment for performance.

       (web               ; HTML and CSS (SCSS/SASS/LESS/Stylus) support.
        +lsp
        )

      ;; (yaml              ; JSON, but readable
      ;;  +lsp
      ;;  )

       ;;zig               ; C, but simpler

       :email
       ;; (mu4e
       ;; +org
       ;; +gmail
       ;; )

       ;;notmuch
       ;; (wanderlust
       ;; +gmail
       ;; )

       :app

       calendar

       ;;emms

       ;;everywhere        ; *leave* Emacs!? You must be joking

       ;;irc               ; how neckbeards socialize

       ;; (rss         ; emacs as an RSS reader
       ;; +org
       ;; )

       ;;twitter           ; twitter client https://twitter.com/vnought

       :config
       ;;literate
       (default
        +bindings
        +smartparens
        )

)
