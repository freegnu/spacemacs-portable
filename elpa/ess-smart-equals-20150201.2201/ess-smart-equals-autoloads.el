;;; ess-smart-equals-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ess-smart-equals" "ess-smart-equals.el" (22679
;;;;;;  17706 793737 503000))
;;; Generated autoloads from ess-smart-equals.el

(autoload 'ess-smart-equals "ess-smart-equals" "\
Insert an R assignment for equal signs preceded by spaces.
For equal signs not preceded by spaces, as in argument lists,
just use equals.  This can effectively distinguish the two uses
of equals in every case.  When RAW is non-nil, the equals sign
is always inserted as is.

\(fn &optional RAW)" t nil)

(autoload 'ess-smart-equals-mode "ess-smart-equals" "\
Minor mode for setting the '=' key to intelligently handle assignment.

When enabled for S-language modes, an '=' key uses the preceding character
to determine the intended construct (assignment, comparison, default argument).
Loosely, an '=' preceded by a space is converted to an assignment, an '='
preceded by a comparison (<>!=) becomes a space-padded comparison operator,
and otherwise just an '=' is inserted. The specific rules are as follows:

  1. In a string or comment or with a non-S language, just insert '='.
  2. If a space (or tab) preceeds the '=', insert a version of `ess-S-assign'
     with no leading space (e.g., '<- ') so that assignment is surrounded
     by at least one space. (Other preceeding spaces are left alone.)
  3. If any of '=<>!' preceed the current '=', insert an '= ', but
     if no space preceeds the preceeding character, insert a space
     so that the resulting binary operator is surrounded by spaces.
  4. If the `ess-S-assign' string (e.g., '<- ') precedes point,
     insert '== ' (a double *not* a single equals).
  5. Otherwise, just insert an '='.

With a prefix argument, '=' always just inserts an '='.

This is a global minor mode that will affect the use of '=' in
all ess-mode and inferior-ess-mode buffers. A local mode
may be included in a future version.

Do not set the variable `ess-smart-equals-mode' directly; use the
function of the same name instead. Also any changes to
`ess-smart-S-assign-key' while this mode is enabled will have no
effect and will be lost when the mode is disabled.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ess-smart-equals-autoloads.el ends here
