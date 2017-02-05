;;; hl-anything-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "hl-anything" "hl-anything.el" (22679 18402
;;;;;;  221432 325000))
;;; Generated autoloads from hl-anything.el

(autoload 'hl-configuration "hl-anything" "\
Configuration

\(fn)" t nil)

(autoload 'hl-highlight-thingatpt-global "hl-anything" "\
Toggle global highlight.

\(fn)" t nil)

(autoload 'hl-unhighlight-all-global "hl-anything" "\
Remove all global highlights.

\(fn)" t nil)

(autoload 'hl-highlight-thingatpt-local "hl-anything" "\
Toggle local highlights in the current buffer.

\(fn)" t nil)

(autoload 'hl-unhighlight-all-local "hl-anything" "\
Remove all local highlights in buffer.

\(fn)" t nil)

(autoload 'hl-save-highlights "hl-anything" "\
Save highlights in `hl-highlight-save-file' file.

  (:global HL-HIGHLIGHTS                 ;; `hl-highlights'
   :local (FILE . HL-HIGHLIGHTS-LOCAL))  ;; `hl-highlights-local'

You can call `hl-restore-highlights' to revert highlights of last session.

\(fn)" t nil)

(autoload 'hl-restore-highlights "hl-anything" "\
Load highligts from `hl-highlight-save-file' file. Before calling this, you 
could call `hl-save-highlights' function.

\(fn)" t nil)

(autoload 'hl-global-highlight-on/off "hl-anything" "\


\(fn)" t nil)

(defvar hl-highlight-mode nil "\
Non-nil if Hl-Highlight mode is enabled.
See the command `hl-highlight-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `hl-highlight-mode'.")

(custom-autoload 'hl-highlight-mode "hl-anything" nil)

(autoload 'hl-highlight-mode "hl-anything" "\
Enable highligt engine to do:
- Show highlight over current line highlight (`hl-line-mode' or 
  `global-hl-line-mode').
- Synchronize global highlights.
- Save highlights before killing Emacs and restore them next time.

\(fn &optional ARG)" t nil)

(autoload 'hl-find-next-thing "hl-anything" "\
Find regexp forwardly and jump to it.

\(fn)" t nil)

(autoload 'hl-find-prev-thing "hl-anything" "\
Find regexp backwardly and jump to it.

\(fn)" t nil)

(autoload 'hl-paren-mode "hl-anything" "\
Minor mode to highlight the enclosing parentheses and more.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("hl-anything-pkg.el") (22679 18402 297322
;;;;;;  958000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; hl-anything-autoloads.el ends here
