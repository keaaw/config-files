;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; New key bindings
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(require 'cl)

(setq mac-command-modifier 'meta)
(setq dabbrev-case-replace nil)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/"))
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     t))
;     (color-theme-initialize)
;     (color-theme-hober)))

;; don't generate tabs, ever
;;
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; ... except you DO want tabs in Makefiles, of course
;; makefile mode stuff -- use tabs in Makefiles
;;
(add-hook 'makefile-mode-hook 'my-makefile-mode-hook)
(defun my-makefile-mode-hook ()
  (setq fill-column 1024)
  (setq indent-tabs-mode t)
  (make-variable-buffer-local 'tab-stop-list)
  (setq tab-stop-list '(8 16 24 32 40 48 56 64 72 79 87 95 103)))

(display-time)
(column-number-mode t)
(setq case-fold-search t)

;; Don't want to add newlines to the end of a buffer.
;;
(set-variable 'next-line-add-newlines nil)
(put 'eval-expression 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)

(setq inhibit-startup-message 't)


(global-set-key "\^X\^B" 'electric-buffer-list)
(global-set-key "\^X " 'electric-buffer-list)
(global-set-key "\^Xt"	 'line-to-top-of-screen)
(global-set-key "\^Xf" 'font-lock-fontify-buffer)
(global-set-key "\^\\"	 'tab-to-tab-stop)
(global-set-key "l"	 'what-line)
(global-set-key "q"	 'quoted-insert)
(global-set-key "\^i"	 'indent-sexp)
(global-set-key "\^r"	 'isearch-backward-regexp)
(global-set-key "g"	 'goto-line)
(global-set-key "p"    'fill-paragraph)
(global-set-key [C-M-e]   'end-of-defun)
(global-set-key " " 	 'set-mark-command)
(global-set-key "\C-cr"  'comment-region)
(global-set-key "\C-cu"  'uncomment-region)

;; set up org mode
;;
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)


;; (setenv "ppy" "/Users/kmw-solutions/gitrepos/work/perpetually")
;; (setenv "pl" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink")
;; (setenv "pw" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink.wiki")
;; (setenv "pb" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink/bin")
;; (setenv "pbf" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink/pp/backfill")

;; (setenv "PERPETUALLY_HOME" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink")
;; (setenv "sr" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink/lib/swf_rewrite")
;; (setenv "srp" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink/lib/swf_rewrite/swf_rewrite_py")
;; (setenv "tf" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink/lib/swf_rewrite/test_files")
;; (setenv "st" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink/lib/swf_rewrite/swf_tools_c")
;; (setenv "ss" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink/lib/swf_rewrite/sample_swfs")
;; (setenv "tss" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink/lib/swf_rewrite/tests/test_server/static")
;; (setenv "ut" "/Users/kmw-solutions/gitrepos/work/perpetually/permalink/lib/swf_rewrite/tests/test_server/static/unit-tests")

;; (setenv "TINYSCHEMEINIT" "/Users/kmw-solutions/nobackup/tinyscheme-1.40/init.scm")

(defun swap-buffers-in-windows ()
  "Put the buffer from the selected window in next window, and vice versa"
  (interactive)
  (let* ((this (selected-window))
     (other (next-window))
     (this-buffer (window-buffer this))
     (other-buffer (window-buffer other)))
    (set-window-buffer other this-buffer)
    (set-window-buffer this other-buffer)
    )
  )


(global-set-key (kbd "C-c S") 'swap-buffers-in-windows)
(global-set-key (kbd "C-c C-g") 'grep)


;;; Color theme based on Tango Palette. Created by danranx@gmail.com
;;; http://www.emacswiki.org/cgi-bin/emacs/color-theme-tango.el
(defun color-theme-tango ()
  "A color theme based on Tango Palette."
  (interactive)
  (color-theme-install
   '(color-theme-tango
;     ((background-color . "#2e3436")
     ((background-color . "black")
      (background-mode . dark)
      (border-color . "#888a85")
;      (cursor-color . "#fce94f")
      (cursor-color . "dark green")
      (foreground-color . "#eeeeec")
      (mouse-color . "#8ae234"))
     ((help-highlight-face . underline)
      (ibuffer-dired-buffer-face . font-lock-function-name-face)
      (ibuffer-help-buffer-face . font-lock-comment-face)
      (ibuffer-hidden-buffer-face . font-lock-warning-face)
      (ibuffer-occur-match-face . font-lock-warning-face)
      (ibuffer-read-only-buffer-face . font-lock-type-face)
      (ibuffer-special-buffer-face . font-lock-keyword-face)
      (ibuffer-title-face . font-lock-type-face))
     (border ((t (:background "#888a85"))))
     (fringe ((t (:background "grey10"))))
     (mode-line ((t (:foreground "#eeeeec" :background "#555753"))))
     (region ((t (:background "#555753"))))
     (font-lock-builtin-face ((t (:foreground "#729fcf"))))
     (font-lock-comment-face ((t (:foreground "#488a45"))))
     (font-lock-constant-face ((t (:foreground "#8ae234"))))
     (font-lock-doc-face ((t (:foreground "#888a85"))))
;     (font-lock-keyword-face ((t (:foreground "#729fcf" :bold t))))
     (font-lock-keyword-face ((t (:foreground "cyan"))))
     ;; remove italic from strings
;     (font-lock-string-face ((t (:foreground "#ad7fa8"))))
     (font-lock-string-face ((t (:foreground "#ad4fa8"))))
     (font-lock-type-face ((t (:foreground "#8ae234" :bold t))))
     (font-lock-variable-name-face ((t (:foreground "#eeeeec"))))
     (font-lock-warning-face ((t (:bold t :foreground "#f57900"))))
;     (font-lock-function-name-face ((t (:foreground "#edd400" :bold t :italic t))))
     (font-lock-function-name-face ((t (:foreground "#edd400" :bold t))))
     ;; ECB - matt added
     ;; see - http://ecb.sourceforge.net/docs/ecb-faces.html
     (ecb-default-highlight-face((t (:background "#75507b"))))
     ;; end ecb
     (comint-highlight-input ((t (:italic t :bold t))))
     (comint-highlight-prompt ((t (:foreground "#8ae234"))))
     (isearch ((t (:background "#f57900" :foreground "#2e3436"))))
     (isearch-lazy-highlight-face ((t (:foreground "#2e3436" :background "#e9b96e"))))
     (show-paren-match-face ((t (:foreground "#2e3436" :background "#73d216"))))
     (show-paren-mismatch-face ((t (:background "#ad7fa8" :foreground "#2e3436"))))
     (minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
     (info-xref ((t (:foreground "#729fcf"))))
     (info-xref-visited ((t (:foreground "#ad7fa8"))))
     (org-hide ((t (:foreground "#2e3436"))))
     (org-level-1 ((t (:bold t :foreground "dodger blue" :height 1.5))))
     (org-level-2 ((t (:bold nil :foreground "#edd400" :height 1.2))))
     (org-level-3 ((t (:bold t :foreground "#6ac214" :height 1.0))))
     (org-level-4 ((t (:bold nil :foreground "tomato" :height 1.0))))
     (org-date ((t (:underline t :foreground "magenta3"))))
     (org-footnote  ((t (:underline t :foreground "magenta3"))))
     (org-link ((t (:foreground "skyblue2" :background "#2e3436"))))
     (org-special-keyword ((t (:foreground "brown"))))
     (org-verbatim ((t (:foreground "#eeeeec" :underline t :slant italic))))
     (org-block ((t (:foreground "#bbbbbc"))))
     (org-quote ((t (:inherit org-block :slant italic))))
     (org-verse ((t (:inherit org-block :slant italic))))
     (org-todo ((t (:bold t :foreground "Red"))))
     (org-done ((t (:bold t :foreground "ForestGreen"))))
     (org-agenda-structure ((t (:weight bold :foreground "tomato"))))
     (org-agenda-date ((t (:foreground "#6ac214"))))
     (org-agenda-date-weekend ((t (:weight normal :foreground "dodger blue"))))
     (org-agenda-date-today ((t (:weight bold :foreground "#edd400"))))
     )))


;;
(if window-system
    (color-theme-tango))

(if (not (window-system))
    (color-theme-tty-dark))

(defun kmw-zap-to-char (arg char)
  "Kill up to and including ARGth occurrence of CHAR.
Case is ignored if `case-fold-search' is non-nil in the current buffer.
Goes backward if ARG is negative; error if CHAR not found."
  (interactive "p\ncZap to char: ")
  ;; Avoid "obsolete" warnings for translation-table-for-input.
  (with-no-warnings
    (if (char-table-p translation-table-for-input)
	(setq char (or (aref translation-table-for-input char) char))))
  (kill-region (point) (progn
                         (search-forward (char-to-string char) nil nil arg)
                         (1- (point))))
  (goto-char (1- (point))))

(global-set-key "z" 'kmw-zap-to-char)

(require 'cc-mode)

(defconst my-c-style
  '((c-basic-offset         . 4)
    (c-offsets-alist        . ((substatement-open . 0)
                               (case-label . 1)
                               (statement-case-intro . 3)))
    (c-hanging-braces-alist . ((substatement-open . (before after))
                               (block-close . c-snug-do-while)
                               (brace-list-close . (before after))
                               (class-close . (before after))))
    (c-cleanup-list         .  (defun-close-semi))
    (c-hanging-colons-alist . ((case-label after)
                               (label after))))
  "My C Programming Style")
(c-add-style "PERSONAL" my-c-style)

;; Customizations for all modes in CC Mode.
(defun my-c-mode-common-hook ()
  ;; set my personal style for the current buffer
  (c-set-style "PERSONAL")

  ;; other customizations
  ;(c-toggle-auto-newline 1))
  )

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(autoload 'markdown-mode "markdown-mode.el" 
	"Major mode for editing Markdown files" t)

(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(confirm-kill-emacs (quote yes-or-no-p))
; '(inferior-lisp-program "java -cp /Users/kmw-solutions/nobackup/clojure-1.3.0/clojure-1.3.0.jar clojure.main")
 '(inferior-lisp-program "/usr/local/bin/lisp")
 '(ns-command-modifier (quote meta)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

