;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; File name: ' ~/.emacs.d/config/display.el '
;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; display color setting
;(load-thema 'misterioso t)
;(if window-system (progn
(cond
    ( (eq window-system 'x)
      ;;; text-color
      (set-face-foreground 'default "Azure")
        ;(add-to-list 'default-frame-alist '(foreground-color . "color_name"))
      ;;; background-color
      (set-face-background 'default "MidnightBlue")
        ;(add-to-list 'default-frame-alist '(background-color . "color_name"))
      ;;; cursor-color
      (add-to-list 'default-frame-alist '(cursor-color . "Blue"))
      ;;; mouse-color
      (add-to-list 'default-frame-alist '(mouse-color . "Blue"))
      ;;; mode-line-text-color
      (set-face-foreground 'mode-line "Black")
      ;;; mode-line-background-color
      (set-face-background 'mode-line "Gray50")
      ;;; mode-line-text-color(non-active)
      (set-face-foreground 'mode-line-inactive "white")
      ;;; mode-line-background-color(non-active)
      (set-face-background 'mode-line-inactive "gray20")
      ;;; region-color
      (set-face-background 'region' "RoyalBlue")
))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; highlight setting
(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)
;(set-face-background'show-paren-match (face-background 'default))
;(if (boundp 'font-lock-comment-face)
;    (set-face-foreground 'show-paren-match
;			 (face-foreground 'font-lock-comment-face))
;  (set-face-foreground 'show-paren-match
;		       (face-foreground 'default)))
(set-face-background 'show-paren-match "#333333")
(set-face-foreground 'show-paren-match "#eeeeee")
(set-face-attribute 'show-paren-match nil
		    :underline "#dddd00"
		    :weight 'extra-bold)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; show clock on mode-line
(display-time)
(setq display-time-24hr-format t)
(setq display-time-string-forms
  '((format "%s/%s/%s(%s) %s:%s"
        year month day dayname 24-hours minutes)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; show line and column number
(line-number-mode t)
(column-number-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; global-display-line-numbers-mode)
;;; It available from Emacs 26
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode)
  (set-face-attribute 'line-number nil
		      :foreground "MidnightBlue"
		      :background "gray50")
  (set-face-attribute 'line-number-current-line nil
		      :foreground "white"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; linum-mode
; (global-linum-mode t)
; (setq linum-format "%d ")
; (set-face-foreground 'linum' "grey")
