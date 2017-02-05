;;; live-py-mode.el --- Live Coding in Python

;; Copyright (C) 2015 Don Kirkby

;; Author: Don Kirkby <donkirkby@gmail.com>
;; Keywords: live coding
;; URL: http://donkirkby.github.io/live-py-plugin/
;; Version: 2015
;; X-Original-Version: 2.8.1
;; Package-Requires: ((emacs "24.1"))

;; This program is distributed under the Eclipse Public License - v 1.0
;; For more information see https://www.eclipse.org/legal/epl-v10.html

;;; Commentary:

;; To use it, open a Python file and run M-x live-py-mode
;; If that doesn't work, put the following in your Emacs configuration file:
;;
;;   (require 'live-py-mode)
;;
;; Requirements: Emacs 24.

;;; Code:

(defvar live-py-timer)
(defvar live-py-output-buffer)
(defvar live-py-output-window)
(defvar live-py-driver)
(defvar live-py-module)
(defvar live-py-dir)
(defvar live-py-path)
(defvar live-py-version)

(defun live-py-after-change-function (start stop len)
  "Run the buffer through the code tracer and show results in the trace buffer."
  (when live-py-timer (cancel-timer live-py-timer))
  (set 'live-py-timer (run-at-time 0.5 nil 'live-py-trace)))


(defun live-py-trace ()
  "Trace the Python code using code_tracer.py."
  (let* ((tracer-path (locate-file "code_tracer.py" load-path))
         (buffer-dir (file-name-directory (buffer-file-name)))
         (command-line-start (concat
			      live-py-version
			      " "
			      tracer-path
			      " -f "
			      buffer-file-name))
	 (command-line (if live-py-driver
			   (concat
			    command-line-start
			    " - "
			    live-py-module
			    " "
			    live-py-driver)
			   command-line-start))
         (pythonpath (concat "PYTHONPATH=" (or live-py-path live-py-dir)))
         (process-environment (cons pythonpath process-environment))
	 (default-directory live-py-dir)
	 )
    (shell-command-on-region 1
                             (+ (buffer-size) 1)
                             command-line
                             live-py-output-buffer))
  (with-current-buffer live-py-output-buffer
    (setq buffer-read-only 1))
  (live-py-synchronize-scroll)
  (set 'live-py-timer nil))


(defun live-py-synchronize-scroll ()
  "Synchronise scrolling between Python and live-py buffers."
  (let ((code-window-start (+ (count-lines 1 (window-start)) 1))
        (position (line-number-at-pos)))
    (unless (window-valid-p live-py-output-window)
      (live-py-show-output-window))
    (with-selected-window live-py-output-window
      (goto-line code-window-start)
      (recenter-top-bottom 0)
      (goto-line position))))


(defun live-py-check-to-scroll ()
  "Check `this-command' to see if a scroll is to be done."
  (cond ((memq this-command '(next-line
                              previous-line
                              scroll-up
                              scroll-up-command
                              scroll-down
                              scroll-down-command
                              beginning-of-buffer
                              end-of-buffer))
         (live-py-synchronize-scroll))))


(defun live-py-show-output-window ()
  "Show the live-py output window."
  (delete-other-windows)
  (get-buffer-create live-py-output-buffer)
  (toggle-truncate-lines 1)
  (with-current-buffer live-py-output-buffer
    (toggle-truncate-lines 1)
    (setq-local show-trailing-whitespace nil))
  (set (make-local-variable 'live-py-output-window)
       (split-window-horizontally))
  (set-window-buffer live-py-output-window live-py-output-buffer))

(defun live-py-set-driver()
  "Prompt user to enter the driver command, with input history support.
To use a unit test, set the driver to something like this:
-m unittest mymodule.MyTest.test_method"
  (interactive)
  (setq live-py-driver (read-string "Type the driver command:"))
  (live-py-after-change-function 0 0 0))

(defun live-py-set-version()
  "Prompt user to enter the python command, with input history support.
Typical values are 'python' or 'python3'."
  (interactive)
  (setq live-py-version (read-shell-command "Type the python command:"))
  (live-py-after-change-function 0 0 0))

(defun live-py-set-dir()
  "Prompt user to enter the working directory."
  (interactive)
  (setq live-py-dir (directory-file-name
		     (expand-file-name
		      (read-directory-name
		       "Working directory:"
		       nil
		       nil
		       t))))
  (unless (string-prefix-p live-py-dir buffer-file-name)
    (error "Working directory must be a parent of %s." buffer-file-name))
  (setq live-py-module (file-name-base buffer-file-name))
  (setq live-py-parent (directory-file-name
			(file-name-directory buffer-file-name)))
  (while (not (string= live-py-parent live-py-dir))
    (setq live-py-module (concat
			  (file-name-nondirectory live-py-parent)
			  "."
			  live-py-module))
    (setq live-py-parent (directory-file-name
			  (file-name-directory live-py-parent))))
  (setq live-py-dir (file-name-as-directory live-py-dir))
  (live-py-after-change-function 0 0 0))

(defun live-py-set-path()
  "Prompt user to enter extra directories for the Python path."
  (interactive)
  (setq live-py-path (read-string "PYTHONPATH:")))

;;;###autoload
(define-minor-mode live-py-mode
  "Minor mode to do on-the-fly Python tracing.
When called interactively, toggles the minor mode.
With arg, turn mode on if and only if arg is positive.
\\{live-py-mode-map}"
  :group 'live-py-mode
  :lighter " live"
  :keymap (let ((map (make-sparse-keymap)))
	    (define-key map (kbd "C-c d") 'live-py-set-driver)
	    (define-key map (kbd "C-c w") 'live-py-set-dir)
	    (define-key map (kbd "C-c p") 'live-py-set-path)
	    (define-key map (kbd "C-c v") 'live-py-set-version)
	    map)
  (unless (buffer-file-name)
    (error "Current buffer has no associated file!"))
  (cond

   ;; Turning the mode ON.
   (live-py-mode
    ;; create a unique name for the trace output buffer
    (set (make-local-variable 'live-py-output-buffer)
         (concat "*live-py-output_"
                 (file-name-nondirectory (buffer-file-name))
                 "_"
                 (make-temp-name "")
                 "*"))
    (set (make-local-variable 'live-py-timer) nil)
    (set (make-local-variable 'live-py-driver) nil)
    (set (make-local-variable 'live-py-module) (file-name-base buffer-file-name))
    (set (make-local-variable 'live-py-dir) (file-name-directory buffer-file-name))
    (set (make-local-variable 'live-py-path) nil)
    (set (make-local-variable 'live-py-version) "python")
    (add-hook 'after-change-functions 'live-py-after-change-function nil t)
    (live-py-show-output-window)
    (live-py-after-change-function 0 0 0)
    (add-hook 'post-command-hook 'live-py-check-to-scroll nil t)
    )
   ;; Turning the mode OFF.
   (t
    (remove-hook 'after-change-functions 'live-py-after-change-function t)
    (remove-hook 'post-command-hook 'live-py-check-to-scroll t)
    (kill-buffer live-py-output-buffer)
    (delete-window live-py-output-window)
    (toggle-truncate-lines 0)
    )
   )
  )

(provide 'live-py-mode)

;;; live-py-mode.el ends here
