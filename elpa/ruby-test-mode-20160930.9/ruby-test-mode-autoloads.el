;;; ruby-test-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ruby-test-mode" "ruby-test-mode.el" (22676
;;;;;;  32247 146075 65000))
;;; Generated autoloads from ruby-test-mode.el

(autoload 'ruby-test-mode "ruby-test-mode" "\
Toggle Ruby-Test minor mode.
With no argument, this command toggles the mode. Non-null prefix
argument turns on the mode. Null prefix argument turns off the
mode.

\(fn &optional ARG)" t nil)

(autoload 'ruby-test-run "ruby-test-mode" "\
Run the current buffer's file as specification or unit test.

\(fn)" t nil)

(autoload 'ruby-test-run-at-point "ruby-test-mode" "\
Run test at point individually, using the same search strategy
as `ruby-test-run-file'

\(fn)" t nil)

(autoload 'ruby-test-toggle-implementation-and-specification "ruby-test-mode" "\
Toggle between the implementation and specification/test file
for the current buffer or the optional FILENAME.

\(fn &optional FILENAME)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ruby-test-mode-autoloads.el ends here
