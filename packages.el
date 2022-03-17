

;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;(package! some-package)

;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;(package! builtin-package :disable t)

;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;(package! builtin-package :recipe (:branch "develop"))

;(package! builtin-package :pin "1a2b3c4d5e")

;(unpin! pinned-package)

;(unpin! pinned-package another-pinned-package)

;(unpin! t)

;;(package! benchmark-init)

;; start ------------------------------------------------ org / org-fancy-priorities
(package!
  org-fancy-priorities
  :disable t
)
;; end -------------------------------------------------- org / org-fancy-priorities

;; start --------------------------------------------------------- org / org-appear
(package!
  org-appear
)
;; end ----------------------------------------------------------- org / org-appear

;; start ---------------------------------------------- org / org-super-agenda
(package!
  org-super-agenda
)
;; end ---------------------------------------------- org / org-super-agenda

;; start ---------------------------------------------- org / transclusion
;; ~/.doom.d/package.el
(package! org-transclusion)
;; end ---------------------------------------------- org / transclusion

;; start ---------------------------------------------- org / ref
;; ~/.doom.d/package.el
(package! org-ref)
;; end ---------------------------------------------- org / ref

(unpin!
  org
  org-roam
)

;; start ------------------------------------------------------- UI / yascroll
;; (package!
;;   yascroll
;; )
;; end ------------------------------------------------------- UI / yascroll

;;(package!
;;  evil-better-visual-line
;;)

(package! writegood-mode
  :disable t
)
