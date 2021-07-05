;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; File name: ' ~/.emacs.d/config/key-binding.el '
;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; C-h for Back Space
;;; M-? for help
;;;
;(define-key key-translation-map [?\C-h] [?\C-?])
;(define-key (current-global-map) "\M-?" 'help)
(global-set-key "\M-?" 'help-command)
(global-set-key "\C-h" 'delete-backward-char)
