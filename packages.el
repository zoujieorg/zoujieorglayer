;;; packages.el --- zoujieorg layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: www <www@v2jessie>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `zoujieorg-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `zoujieorg/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `zoujieorg/pre-init-PACKAGE' and/or
;;   `zoujieorg/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst zoujieorg-packages
  '(;;monokai-theme
    org-page
    ;;hungry-delete
    counsel
    ;;iedit
    )
  "The list of Lisp packages required by the zoujieorg layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

;;(defun zoujieorg/init-monokai ()
;;  (use-package monokai-theme
;;    :init))

(defun zoujieorg/init-org-page()
  (use-package org-page
               :config
               (setq op/repository-directory "~/zoujieorg/org")
               (setq op/site-domain "http://me.zoujie.org")
               (setq op/personal-disqus-shortname "zoujie")
               (setq op/site-main-title "边走边看")
               (setq op/site-sub-title "==========>   折腾不止!")
               (setq op/personal-github-link "https://github.com/zoujieorg")
               ))

;;(defun zoujieorg/init-hungry-delete ()
;;  (use-package hungry-delete
;;               :config
;;               )
;;  )

;;(defun zoujieorg/init-occur-dwim ()
;;  (use-package occur-dwim
;;    :config))

(defun zoujieorg/init-counsel ()
  (use-package counsel
    :config))

;;; packages.el ends here
