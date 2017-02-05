;;; flyspell-correct-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "flyspell-correct" "flyspell-correct.el" (22676
;;;;;;  31530 61854 693000))
;;; Generated autoloads from flyspell-correct.el

(autoload 'flyspell-correct-word-generic "flyspell-correct" "\
Correct word before point using `flyspell-correct-interface'.
Adapted from `flyspell-correct-word-before-point'.

\(fn)" t nil)

(autoload 'flyspell-correct-previous-word-generic "flyspell-correct" "\
Correct the first misspelled word that occurs before point.
But don't look beyond what's visible on the screen.

Uses `flyspell-correct-word-generic' function for correction.

\(fn POSITION)" t nil)

(autoload 'flyspell-correct-next-word-generic "flyspell-correct" "\
Correct the first misspelled word that occurs after point.
But don't look beyond what's visible on the screen.

Uses `flyspell-correct-word-generic' function for correction.

\(fn POSITION)" t nil)

(autoload 'flyspell-correct-auto-mode "flyspell-correct" "\
Minor mode for automatically correcting word at point.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("flyspell-correct-ido.el" "flyspell-correct-pkg.el")
;;;;;;  (22676 31530 76919 479000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; flyspell-correct-autoloads.el ends here
