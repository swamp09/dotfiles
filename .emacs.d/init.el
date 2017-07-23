;;Caskの初期化

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask)

(cask-initialize)

;; 対応する括弧を表示する
(show-paren-mode t)

;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)

;; .#* とかのバックアップファイルを作らない 
(setq auto-save-default nil)
 
;; ^H を バックスペースへ
(global-set-key "\C-h" 'delete-backward-char)

;; 括弧の補完
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(setq skeleton-pair 1)

;; emacsでGauche
(setq process-coding-system-alist
      (cons '("gosh" utf-8 . utf-8) process-coding-system-alist))
(setq scheme-program-name "/usr/local/bin/gosh -i")

(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)

(defun scheme-other-window ()
  "Run Gauche on other window"
  (interactive)
  (split-window-horizontally (/ (frame-width) 2))
  (let ((buf-name (buffer-name (current-buffer))))
    (scheme-mode)
    (switch-to-buffer-other-window
     (get-buffer-create "*scheme*"))
    (run-scheme scheme-program-name)
    (switch-to-buffer-other-window
     (get-buffer-create buf-name))))

;;gauche-manual
(autoload 'gauche-manual "gauche-manual" "jump to gauche online manual." t)
(add-hook 'scheme-mode-hook
          '(lambda ()
       (define-key scheme-mode-map "\C-c\C-f" 'gauche-manual)))

(define-key global-map
  "\C-cG" 'scheme-other-window)

;;ruby-mode
(autoload 'ruby-mode "ruby-mode")
(autoload 'ruby-electric-mode "ruby-electric")
(global-set-key (kbd "C-c r b") 'ruby-mode)
(add-auto-mode "\\.rb$" ruby-mode)
(setq ruby-deep-indent-paren-style nil)
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
(add-hook-fn 'ruby-mode-hook
  ;; 括弧の自動挿入
  (ruby-electric-mode)
  ;; インデント幅: 2
  (setq ruby-indent-level 2)
  ;; 改行時に自動インデント
  (define-key ruby-mode-map "\C-m" 'ruby-reindent-then-newline-and-indent))
;; defadviceで既存のインデント関数ruby-indent-lineに対する追加処理を定義する
;; after -> 既存の関数の処理の後に実行される
;; unindent-closing-paren -> このアドバイスの名前
;; activate -> このアドバイスがすぐに有効になる
(defadvice ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column))
        indent offset)
    (save-excursion
      ;; ポイント(カーソル)をインデントの位置に移動する
      (back-to-indentation)
      ;; syntax-ppssはparserの状態を表すリストを返す
      ;; 1番目の要素は括弧の深さ、2番目の要素は一番内側の開始括弧の位置を表す
      (let ((state (syntax-ppss)))
        ;; ポイントの初期状態とインデントの位置との差をoffsetとする
        (setq offset (- column (current-column)))
        ;; ポイントの位置の文字が')'で括弧の中にある場合
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          ;; 一番内側の'('に移動
          (goto-char (cadr state))
          ;; インデント幅を取得
          (setq indent (current-indentation)))))
    (when indent
      ;; インデントする
      (indent-line-to indent)
      ;; オフセットが存在する場合、その分だけポイントを移動する
      ;; つまり、インデント修正後のポイントのあるべき場所に戻る
      (when (> offset 0) (forward-char offset)))))

;;inf-ruby
(autoload 'inf-ruby-minor-mode "inf-ruby")
(setenv "PAGER" (executable-find "cat"))
(add-hook-fn 'ruby-mode-hook
  (inf-ruby-minor-mode)
  (inf-ruby-switch-setup))

;;rspec-mode
(autoload 'rspec-mode "rspec-mode")
(add-hook 'ruby-mode-hook 'rspec-mode)

;;flycheck
(autoload 'flycheck-mode "flycheck")
(add-hook 'ruby-mode-hook 'flycheck-mode)
(setq flycheck-check-syntax-automatically '(idle-change mode-enabled new-line save))

;;color-theme
(load-theme 'misterioso t)
