;; show column numbers
(column-number-mode t)

;; don't show the menubar
(menu-bar-mode -1)

;; highlight the current line
(global-hl-line-mode t)

;; projectile for project management
(projectile-global-mode)

;; deletes region when starting typing
(pending-delete-mode t)

;; auto revert changes on disk
(global-auto-revert-mode t)

;; recentf
(recentf-mode 1)
(setq recentf-max-saved-items 30)
(add-to-list 'recentf-exclude "\\/tmp\\'")

;; whitespace
(setq whitespace-style
      '(face tabs spaces trailing lines space-before-tab
             newline indentation space-after-tab tab-mark newline-mark)
      whitespace-display-mappings
      '((space-mark   ?\    [?\xB7]     [?.])     ; space
        (space-mark   ?\xA0 [?\xA4]     [?_])     ; hard space
        (newline-mark ?\n   [?\xAB ?\n] [?$ ?\n]) ; end-of-line
        ))

;; auto completion
(require 'auto-complete-config)
(ac-config-default)
(setq ac-auto-start nil)    ; don't automatically trigger auto-complete
(ac-set-trigger-key "TAB")  ; only trigger auto-completion on TAB

;; ack
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

;; ido
(ido-mode t)
(ido-ubiquitous-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ; ido-create-new-buffer 'always
      ido-ignore-buffers
      '("\\` " "^\\*ESS\\*" "^\\*Messages\\*" "^\\*Help\\*" "^\\*Buffer"
        "^\\*.*Completions\\*$" "^\\*Ediff" "^\\*tramp" "^\\*cvs-"
        "_region_" " output\\*$" "^TAGS$" "^\*Ido")
      ido-ignore-directories
      '("\\`auto/" "\\`auto-save-list/" "\\`backups/" "\\`semanticdb/"
        "\\`target/" "\\`\\.git/" "\\`\\.svn/" "\\`CVS/" "\\`\\.\\./"
        "\\`\\./")
      ido-ignore-files
      '("\\`auto/" "\\.prv/" "_region_" "\\.class/"  "\\`CVS/" "\\`#"
        "\\`.#" "\\`\\.\\./" "\\`\\./" "\\.hi$"))

; auto-fill
(add-hook 'html-mode-hook 'turn-off-auto-fill)
;(add-hook 'clojure-mode-hook 'turn-on-auto-fill)
(add-hook 'python-mode-hook 'turn-on-auto-fill)
;(setq comment-auto-fill-only-comments t)

;;flyspell
;(add-hook 'clojure-mode-hook 'flyspell-prog-mode)
;(add-hook 'haskell-mode-hook 'flyspell-prog-mode)
;(add-hook 'python-mode-hook 'flyspell-prog-mode)
;(add-hook 'message-mode-hook 'flyspell-mode)

;; scheme
(setq scheme-program-name "csi -:c")

;; lisp
(setq inferior-lisp-program "/usr/bin/sbcl --noinform")

;; PO
(setq auto-mode-alist
      (cons '("\\.po\\'\\|\\.po\\." . po-mode) auto-mode-alist))
(autoload 'po-mode "po-mode" "Major mode for translators to edit PO files" t)

;; markdown
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.page" . markdown-mode) auto-mode-alist))
(add-hook 'markdown-mode-hook 'turn-on-pandoc)

;; puppet
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

;; twittering
(setq twittering-use-master-password t)
(add-hook 'twittering-edit-mode-hook
          (lambda ()
            (auto-fill-mode -1)))

;; diminish
(diminish 'projectile-mode)
(diminish 'auto-complete-mode)
