;;; ensime-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ensime" "ensime.el" (22676 32330 658093 266000))
;;; Generated autoloads from ensime.el

(autoload 'ensime "ensime" "\
Read config file for settings then start an ensime-server and connect.

\(fn)" t nil)

(autoload 'ensime-remote "ensime" "\
Read config file for settings. Then connect to an existing ENSIME server.

\(fn HOST PORT)" t nil)

;;;***

;;;### (autoloads nil "ensime-auto-complete" "ensime-auto-complete.el"
;;;;;;  (22676 32330 662093 267000))
;;; Generated autoloads from ensime-auto-complete.el

(autoload 'ensime-ac-enable "ensime-auto-complete" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "ensime-company" "ensime-company.el" (22676
;;;;;;  32330 610093 257000))
;;; Generated autoloads from ensime-company.el

(autoload 'ensime-company-enable "ensime-company" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "ensime-mode" "ensime-mode.el" (22676 32330
;;;;;;  642093 263000))
;;; Generated autoloads from ensime-mode.el

(autoload 'ensime-mode "ensime-mode" "\
ENSIME: The ENhanced Scala Interaction Mode for Emacs (minor-mode).
\\{ensime-mode-map}

\(fn &optional ARG)" t nil)

(add-hook 'scala-mode-hook (lambda nil (when (fboundp 'ensime) (ensime-mode))))

;;;***

;;;### (autoloads nil nil ("ensime-client.el" "ensime-comint-utils.el"
;;;;;;  "ensime-compat.el" "ensime-completion-util.el" "ensime-config.el"
;;;;;;  "ensime-debug.el" "ensime-doc.el" "ensime-editor.el" "ensime-expand-region.el"
;;;;;;  "ensime-goto-testfile.el" "ensime-helm.el" "ensime-http.el"
;;;;;;  "ensime-inf.el" "ensime-inspector.el" "ensime-macros.el"
;;;;;;  "ensime-model.el" "ensime-notes.el" "ensime-overlay.el" "ensime-pkg.el"
;;;;;;  "ensime-popup.el" "ensime-refactor.el" "ensime-sbt.el" "ensime-search.el"
;;;;;;  "ensime-semantic-highlight.el" "ensime-stacktrace.el" "ensime-startup.el"
;;;;;;  "ensime-ui.el" "ensime-undo.el" "ensime-util.el" "ensime-vars.el")
;;;;;;  (22676 32330 682753 178000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ensime-autoloads.el ends here
