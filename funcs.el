;;在语句中间时仍然可以显示所在的括号 emacs25版支持
;;(define-advice show-paren-function (:around (fn) fix-show-paren-function)
;;  "Hightlight enclosing parens."
;;  (cond ((looking-at-p "\\s(") (function fn))
;;	(t (save-excursion
;;	     (ignore-errors (backward-up-list))
;;	     (funcall fn)))))
;;在语句中间时仍然可以显示所在的括号
(defadvice show-paren-function (around fix-show-paren-function activate)
  (cond ((looking-at-p "\\s(") ad-do-it)
        (t (save-excursion
             (ignore-errors (backward-up-list))
             ad-do-it))))

(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(put 'dired-find-alternate-file 'disabled nil)

(defun occur-dwim ()
  "Call 'occur' with a sane default."
  (interactive)
  (push (if (region-active-p)
            (buffer-substring-no-properties
             (region-beginning)
             (region-end))
          (let ((sym (thing-at-point 'symbol)))
            (when (stringp sym)
              (regexp-quote sym))))
        regexp-history)
  (call-interactively 'occur))

(defun zoujieorgm ()
  (interactive)
  "this is a test"
  (message "Hello world @zoujieorg"))



