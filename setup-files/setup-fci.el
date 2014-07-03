;; Time-stamp: <2014-07-03 11:11:36 kmodi>

;; Fill Column Indicator
;; Source: http://www.emacswiki.org/FillColumnIndicator

(require 'fill-column-indicator)

;; Turn on fci-mode only for specific modes
;; As truncation is enabled only in fci-mode, truncation will be activated only
;; in the below modes
(add-hook 'verilog-mode-hook    'fci-mode)
(add-hook 'emacs-lisp-mode-hook 'fci-mode)
(add-hook 'python-mode-hook     'fci-mode)
(add-hook 'sh-mode-hook         'fci-mode)
(add-hook 'cperl-mode-hook      'fci-mode)
(add-hook 'org-mode-hook        'fci-mode)
;; (add-hook 'after-change-major-mode-hook 'fci-mode) ;; Enable fci-mode automatically for all files

;; TIP: How to know what the current major mode is?
;; Do `M-:`, type the following `(message "%s" major-mode)` and press Return.

(setq fci-handle-truncate-lines t ;; Truncate lines in fci mode
      ;;fci-handle-truncate-lines nil  ;; Do not truncate lines in fci mode
      fci-rule-width 2
      fci-rule-use-dashes nil
      fci-dash-pattern 0.3
      )

(setq-default fci-rule-column 80) ;; default is 70

(provide 'setup-fci)
