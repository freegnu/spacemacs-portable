;;; hlint-refactor-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "hlint-refactor" "hlint-refactor.el" (22679
;;;;;;  17569 809797 579000))
;;; Generated autoloads from hlint-refactor.el

(autoload 'hlint-refactor-refactor-buffer "hlint-refactor" "\
Apply all hlint suggestions in the current buffer.
ARGS specifies additional arguments that are passed to hlint.

\(fn &optional ARGS)" t nil)

(autoload 'hlint-refactor-refactor-at-point "hlint-refactor" "\
Apply the hlint suggestion at point.

\(fn)" t nil)

(autoload 'hlint-refactor-mode "hlint-refactor" "\
Automatically apply hlint suggestions

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; hlint-refactor-autoloads.el ends here
