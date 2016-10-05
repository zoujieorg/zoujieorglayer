(global-linum-mode t)
;;(load-theme 'monokai t)
(set-language-environment "UTF-8")
(setq initial-frame-alist '((fullscreen . maximized)))
(setq-default cursor-type 'bar)
;;选择文本内容时，如有键入，则选择内容被替换
(delete-selection-mode t)

;;注释文件中的语法高亮
(setq org-src-fontify-natively t)

;;(global-hungry-delete-mode)
(abbrev-mode t)
