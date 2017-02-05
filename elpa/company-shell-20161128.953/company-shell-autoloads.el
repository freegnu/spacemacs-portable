;;; company-shell-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "company-shell" "company-shell.el" (22679 17600
;;;;;;  341784 190000))
;;; Generated autoloads from company-shell.el

(autoload 'company-shell-rebuild-cache "company-shell" "\
Builds the cache of all completions found on the $PATH and all fish functions.

\(fn)" t nil)

(autoload 'company-fish-shell "company-shell" "\
Company backend for fish shell functions.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(autoload 'company-shell "company-shell" "\
Company mode backend for binaries found on the $PATH.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; company-shell-autoloads.el ends here
