;;; init.el --- johncoder's Emacs configuration -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:
(package-initialize)

(require 'org)
(require 'ob-tangle)

(defvar init-dir nil)
(setq init-dir (file-name-directory (or load-file-name (buffer-file-name))))
(org-babel-load-file (expand-file-name "README.org" init-dir))

(message "loading work.el...")
(load-file (expand-file-name "work.el" init-dir))
(message "loaded work.el!")

;; (when (file-exists-p "work.el")
;;   (message "Loading work.el...")
;;   (load-file "work.el"))
;;; init.el ends here
