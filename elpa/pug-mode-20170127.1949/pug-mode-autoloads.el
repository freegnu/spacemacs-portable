;;; pug-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "pug-mode" "pug-mode.el" (22676 32292 694085
;;;;;;  102000))
;;; Generated autoloads from pug-mode.el

(autoload 'pug-mode "pug-mode" "\
Major mode for editing Pug files.

\\{pug-mode-map}

\(fn)" t nil)

(autoload 'pug-compile "pug-mode" "\


\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(jade\\|pug\\)\\'" . pug-mode))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; pug-mode-autoloads.el ends here
