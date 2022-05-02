# dot-emacs
My Emacs settings.

## ファイル配置
* `.emacs.d`下には`init.el`を配置．
* `.emacs.d/config`に個別の設定ファイルを配置し，上記`init.el`でロード．
* `mew.el`はホームディレクトリ直下`~/.mew.el`でも良い．

例: 
```
~/
└── .emacs.d
    ├── init.el
    └── config
        ├── company-mode.el
        ├── display.el
        ├── key-binding.el
        ├── main.el
        ├── mew.el
        └── packages.el
```
