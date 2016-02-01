(toggle-debug-on-quit)
;html tab键使用4个空格
(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 4)
            (setq indent-tabs-mode t)))

(require 'evil-fcitx)
;;config gui mono font
(require 'chinese-fonts-setup)

(setq org-log-done nil)

(setq auto-save-interval 20)

(add-hook 'c-mode-common-hook
		  (lambda ()
			(define-key evil-normal-state-map (kbd "C-]") 'ggtags-find-tag-dwim)
			))

;;auto detect file encode
(prefer-coding-system 'chinese-gbk)
(prefer-coding-system 'utf-8)
;;(global-set-key "\C-," 'pop-tag-mark)

(define-key evil-normal-state-map (kbd "SPC") 'evil-scroll-page-down)
;;(define-key evil-normal-state-map (kbd "S-SPC") 'evil-scroll-page-up)
