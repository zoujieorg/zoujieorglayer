(global-linum-mode t)
;;(load-theme 'monokai t)
(set-language-environment "UTF-8")
;;(setq initial-frame-alist '((fullscreen . maximized)))
;;(setq-default cursor-type 'bar)
;;选择文本内容时，如有键入，则选择内容被替换
(delete-selection-mode t)

;;注释文件中的语法高亮
(setq org-src-fontify-natively t)

;;(global-hungry-delete-mode)
(abbrev-mode t)

;;(require 'gradle-mode)
;;(gradle-mode 1)
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; C-w 来删除整行（不用事先选中整行），同时不影响原有的剪切功能。M-w 也可以在不事先选中整行的情况下复制整行。
(defadvice kill-ring-save (before slickcopy activate compile)
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))
(defadvice kill-region (before slickcut activate compile)
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))
