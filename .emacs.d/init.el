(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t)
 '(org-babel-load-languages
   (quote
    ((awk . t)
     (sh . t)
     (C . t)
     (emacs-lisp . t)
     (js . t))))
 '(package-selected-packages
   (quote
    (erlang linum-relative evil-collection which-key projectile exec-path-from-shell dashboard helm nov)))
 '(recentf-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
(add-to-list 'default-frame-alist '(font . "Source Code Pro 12"))

;;
;; BEGIN SELF
;;

;; We installed Helm from MELPA, let's bind it
(global-set-key (kbd "M-x") 'helm-M-x)

;; Enables saving sessions!
(desktop-load-default)
(desktop-read)

;; Disable toolbar
(tool-bar-mode 0)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; let's always have which-key
(which-key-mode 1)
(setq which-key-idle-delay 0.3)

;; evil-collection does evil keybindings for parts of emacs that evil-mode dont
(setq evil-want-keybinding nil)
(setq evil-collection-setup-minibuffer t) ;; enable evil binds for helm and the like with Alt+hjkl
(require 'evil)
(when (require 'evil-collection nil t)
  (evil-collection-init))


;; Evil Mode!
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;; function to open this dotfile
(defun mm-open-init ()
  (interactive)
  (find-file-other-window "~/.emacs.d/init.el"))

(linum-relative-global-mode)

;; don't confirm org-babel src execution
(setq org-confirm-babel-evaluate nil)
