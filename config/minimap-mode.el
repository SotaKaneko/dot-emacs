;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; File name: ' ~/.emacs.d/config/minimap-mode.el '
;;;

(require 'minimap)
(minimap-mode 1)
(setq minimap-major-modes '(artist-mode
			    c-mode
			    c++-mode
			    prog-mode
			    emacs-lisp-mode
			    latex-mode
			    lisp-mode
			    makefile-mode
			    prog-mode
			    tex-mode))
			    
(setq minimap-window-location `left)
(setq minimap-update-delay 0.1)
(setq minimap-minimum-width 20)
