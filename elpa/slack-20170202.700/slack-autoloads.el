;;; slack-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "slack" "slack.el" (22676 32217 62068 280000))
;;; Generated autoloads from slack.el

(autoload 'slack-start "slack" "\


\(fn &optional TEAM)" t nil)

;;;***

;;;### (autoloads nil "slack-team" "slack-team.el" (22676 32217 74068
;;;;;;  282000))
;;; Generated autoloads from slack-team.el

(autoload 'slack-register-team "slack-team" "\
PLIST must contain :name :client-id :client-secret with value.
setting :token will reduce your configuration step.
you will notified when receive message with channel included in subscribed-chennels.
if :default is t and `slack-prefer-current-team' is t, skip selecting team when channels listed.
you can change current-team with `slack-change-current-team'

\(fn &rest PLIST)" t nil)

;;;***

;;;### (autoloads nil nil ("slack-bot-message.el" "slack-buffer.el"
;;;;;;  "slack-channel.el" "slack-file.el" "slack-group.el" "slack-im.el"
;;;;;;  "slack-message-delete.el" "slack-message-editor.el" "slack-message-formatter.el"
;;;;;;  "slack-message-notification.el" "slack-message-reaction.el"
;;;;;;  "slack-message-sender.el" "slack-message.el" "slack-pkg.el"
;;;;;;  "slack-reaction.el" "slack-reminder.el" "slack-reply.el"
;;;;;;  "slack-request.el" "slack-room.el" "slack-search.el" "slack-thread.el"
;;;;;;  "slack-user-message.el" "slack-user.el" "slack-util.el" "slack-websocket.el")
;;;;;;  (22676 32217 105081 132000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; slack-autoloads.el ends here
