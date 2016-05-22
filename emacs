(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char)
  )

(defun clean-line-ends ()
  (interactive)
  (if (not buffer-read-only)
      (save-excursion
	(goto-char (point-min))
	(let ((count 0))
	  (while (re-search-forward "[ 	]+$" nil t)
	    (setq count (+ count 1))
	    (replace-match "" t t))
	  (message "Cleaned %d lines" count)
	  )
	)
    )
  )

(setq c-basic-offset 4)
(setq tab-width 4)
(setq indent-tabs-mode nil)

(setq inhibit-splash-screen t)

(setq visible-bell t)

;; taken from http://orgmode.org/worg/org-tutorials/orgtutorial_dto.html
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
