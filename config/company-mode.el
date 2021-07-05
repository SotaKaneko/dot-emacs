;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; File name: ' ~/.emacs.d/config/company-mode.el '
;;;

(require 'company)
(global-company-mode)
(setq company-idle-delay 0)
(setq company-selection-wrap-around t)
(define-key company-active-map (kbd "M-n") 'company-select-next)
(define-key company-active-map (kbd "M-p") 'company-select-previous)
