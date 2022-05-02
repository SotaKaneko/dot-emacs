;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; File name: ` ~/.emacs.d/config/mew.el '
;;;
;;; This is a configuration file for
;;; Messaging in the Emacs World
;;;
;;; Note
;;; ref: https://www.mew.org/ja/info/release/

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 自分のアドレス(返信時に削除される)
(setq mew-mail-address-list
      '("foo@example.com"
        "bar@example.com"
        ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; メールアカウントの設定
(setq mew-config-alist
      ; defaultユーザが起動時に読み込まれる
      '(("default"
         ; Fromに表示される名前(From: name <user@mail-domain>)
         ; https://www.mew.org/ja/info/release/mew_8.html
         (name              "Display Name")
         ; ログイン名
         (user              "foo")
         ; ドメイン名
         (mail-domain       "example.com")
         ; fccの格納先
         (fcc               "%Sent")
         ; Mew起動時の移動先フォルダ(%inbox)
         (proto             "%")
         ; IMAPサーバ名
         (imap-server       "mail.example.com")
         ; IMAPS(IMAP over SSL/TLS)の有効化
         (imap-ssl          t)
         ; IMAPSのポート番号
         (imap-ssl-port     "993")
         ; IMAPのアカウント名
         (imap-user         "foo")
         ; IMAPの認証方式
         (imap-auth         t)
         ; メッセージ取得後にIMAPサーバ上のメッセージを削除しない
         (imap-delete       nil)
         ; メール到着確認間隔
         (imapdiff-interval 60)
         ; SMTPサーバ名
         (smtp-server       "mail.example.com")
         ; SMTPのアカウント名
         (smtp-user         "foo")
         ; SMTPS(SMTP over SSL/TLS)の有効化
         (smtp-ssl          t)
         ; SMTPSのポート番号
         (smtp-ssl-port     "587")
         ; SMTPの認証方式
         (smtp-auth         t)
         ; 署名ファイルのパス
         (signature-file    "~/.signature"))
        ; 他のアカウントを追加する場合は上と同様に以下のように追記する
        ("sub"
         (name              "Display Name")
         (user              "bar")
         (mail-domain       "example.com")
         (fcc               "%Sent")
         (proto             "%")
         (imap-server       "mail.example.com")
         (imap-ssl          t)
         (imap-ssl-port     "993")
         (imap-user         "bar")
         (imap-auth         "LOGIN")
         (imap-delete       nil)
         (imapdiff-interval 60)
         (smtp-server       "mail.example.com")
         (smtp-user         "bar")
         (smtp-ssl          t)
         (smtp-ssl-port     "465")
         (smtp-auth         t)
         (signature-file    "~/.signature.sub"))
        ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 一時的にパスワードをメモリ上に保存する
(setq mew-use-cached-passwd t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; メールを自動で受信する
(setq mew-auto-get t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Stunnel を読み込み
;;; Stunnel のインストール先のパスを指定(環境に合わせて)
(setq mew-prog-ssl "/usr/bin/stunnel")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; CA証明書
;;; CA Bundleのパスを指定(環境に合わせて)
(setq mew-prog-ssl-arg "CAfile=/etc/ssl/ca-bundle.pem\n")
