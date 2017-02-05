;;; systemd-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "systemd" "systemd.el" (22676 32137 494049
;;;;;;  671000))
;;; Generated autoloads from systemd.el

(defconst systemd-autoload-regexp (eval-when-compile (rx (+\? (any "a-zA-Z0-9-_.@\\")) "." (or "automount" "busname" "mount" "service" "slice" "socket" "swap" "target" "timer" "link" "netdev" "network") string-end)) "\
Regexp for file buffers in which to autoload `systemd-mode'.")

(defconst systemd-tempfn-autoload-regexp (eval-when-compile (rx ".#" (or (and (+\? (any "a-zA-Z0-9-_.@\\")) "." (or "automount" "busname" "mount" "service" "slice" "socket" "swap" "target" "timer" "link" "netdev" "network")) "override.conf") (= 16 (char hex-digit)) string-end)) "\
Regexp for temp file buffers in which to autoload `systemd-mode'.")

(defconst systemd-dropin-autoload-regexp (eval-when-compile (rx "/systemd/" (+\? anything) ".d/" (+\? (not (any 47))) ".conf" string-end)) "\
Regexp for dropin config file buffers in which to autoload `systemd-mode'.")
 (add-to-list 'auto-mode-alist '("\\.nspawn\\'" . systemd-mode))
 (add-to-list 'auto-mode-alist `(,systemd-autoload-regexp . systemd-mode))
 (add-to-list 'auto-mode-alist `(,systemd-tempfn-autoload-regexp . systemd-mode))
 (add-to-list 'auto-mode-alist `(,systemd-dropin-autoload-regexp . systemd-mode))

(autoload 'systemd-mode "systemd" "\
Major mode for editing systemd unit files.
See http://www.freedesktop.org/wiki/Software/systemd/ for more
information about systemd.

In addition to any hooks its parent mode might have run, this
mode runs the hook `systemd-mode-hook' at mode initialization.

Key bindings:
\\{systemd-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("systemd-pkg.el") (22676 32137 516176
;;;;;;  31000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; systemd-autoloads.el ends here
