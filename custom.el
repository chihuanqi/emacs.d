(toggle-debug-on-quit)
;html tab键使用4个空格
(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 4)
            (setq indent-tabs-mode t)))

(require 'evil-fcitx)

(setq org-log-done nil)

(setq auto-save-interval 20)

(add-hook 'c-mode-common-hook
		  (lambda ()
			(define-key evil-normal-state-map (kbd "C-]") 'ggtags-find-tag-dwim)
			))

;;(global-set-key "\C-," 'pop-tag-mark)
