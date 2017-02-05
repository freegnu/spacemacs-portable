;;; company-emoji-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "company-emoji" "company-emoji.el" (22676 32377
;;;;;;  194103 44000))
;;; Generated autoloads from company-emoji.el

(autoload 'company-emoji "company-emoji" "\
Provide a backend for company to complete emoji-words.

company.el calls this function, and passes a COMMAND to it that
depends on the context: 'prefix', 'candidates', 'annotation',
etc.  In some contexts it also passes ARG, which is the list of
candidates that match what has been typed so far.  Sometimes ARG
is a single candidate, as when COMMAND is 'annotation' or
'post-completion'.  Other arguments are IGNORED.

\(fn COMMAND &optional ARG &rest IGNORED)" nil nil)

(autoload 'company-emoji-init "company-emoji" "\
Add emoji to the company backends.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("company-emoji-list.el" "company-emoji-pkg.el")
;;;;;;  (22676 32377 204621 31000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; company-emoji-autoloads.el ends here
