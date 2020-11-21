(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char)
  )

(setq c-basic-offset 4)
(setq tab-width 4)
(setq-default indent-tabs-mode nil)

(setq-default fill-column 80)

(setq inhibit-splash-screen t)

(setq visible-bell t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "http://melpa.org/packages/")
 t)
(package-initialize)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(global-auto-revert-mode t)

(tool-bar-mode -1)

;; (global-display-line-numbers-mode)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(use-package elpy
  :ensure t
  :init
  (elpy-enable))

(ido-mode 1)

(require 'fill-column-indicator)

(setq column-number-mode t)

(which-function-mode 1)

(put 'compile-command 'safe-local-variable 'stringp)
(put 'compilation-read-command 'safe-local-variable #'booleanp)

(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))

(add-hook 'sh-mode-hook 'flymake-mode)

(define-key flymake-mode-map (kbd "M-n") 'flymake-goto-next-error)
(define-key flymake-mode-map (kbd "M-p") 'flymake-goto-prev-error)
