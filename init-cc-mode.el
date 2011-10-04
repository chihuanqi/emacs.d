;C/C++ SECTION
(defun my-c-mode-hook ()
  (local-set-key "\M-f" 'c-forward-into-nomenclature)
  (local-set-key "\M-b" 'c-backward-into-nomenclature)
  (setq c-basic-offset 4)
  (setq c-style-variables-are-local-p nil)
  ;give me NO newline automatically after electric expressions are entered
  (setq c-auto-newline nil)

  ;if (0)          becomes        if (0)
  ;    {                          {
  ;       ;                           ;
  ;    }                          }
  (c-set-offset 'substatement-open 0)

  ;first arg of arglist to functions: tabbed in once
  ;(default was c-lineup-arglist-intro-after-paren)
  (c-set-offset 'arglist-intro '+)

  ;second line of arglist to functions: tabbed in once
  ;(default was c-lineup-arglist)
  (c-set-offset 'arglist-cont-nonempty '+)

  ;switch/case:  make each case line indent from switch
  (c-set-offset 'case-label '+)

  ;make the ENTER key indent next line properly
  (local-set-key "\C-m" 'newline-and-indent)

  ;syntax-highlight aggressively
  ;(setq font-lock-support-mode 'lazy-lock-mode)
  (setq lazy-lock-defer-contextually t)
  (setq lazy-lock-defer-time 0)

  ;make DEL take all previous whitespace with it
  (c-toggle-hungry-state 1)

  ;make open-braces after a case: statement indent to 0 (default was '+)
  (c-set-offset 'statement-case-open 0)

  ;make a #define be left-aligned
  (setq c-electric-pound-behavior (quote (alignleft)))

  ;do not impose restriction that all lines not top-level be indented at least
  ;1 (was imposed by gnu style by default)
  (setq c-label-minimum-indentation 0)
  (if (or *linux* *cygwin*)
    (require 'gtags)
    (gtags-mode 1)
    )
  )
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'cc-mode-hook 'my-c-mode-hook)

(provide 'init-cc-mode)