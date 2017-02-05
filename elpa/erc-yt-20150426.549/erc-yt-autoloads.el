;;; erc-yt-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "erc-yt" "erc-yt.el" (22676 32237 542072 913000))
;;; Generated autoloads from erc-yt.el

(autoload 'erc-yt-show-info "erc-yt" "\
Replace youtube links in erc buffers with title, description and thumbnail.

\(fn)" t nil)

(eval-after-load 'erc '(define-erc-module youtube nil "Display clickable youtube thumbnails inline. " ((add-hook 'erc-insert-modify-hook 'erc-yt-show-info t) (add-hook 'erc-send-modify-hook 'erc-yt-show-info t)) ((remove-hook 'erc-insert-modify-hook 'erc-yt-show-info) (remove-hook 'erc-send-modify-hook 'erc-yt-show-info))))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; erc-yt-autoloads.el ends here
