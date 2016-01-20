# dotfiles

## centos 6.5


### gitインストール
```
 $ su -
 # yum install git
 ※最新版なら別方法
```

### rbenvインストール
* https://github.com/rbenv/rbenv
```
# git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# cd ~/.rbenv && src/configure && make -C src
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(rbenv init -)"' >> ~/.bashrc
# type rbenv
=>エラーなければOK
```

### ruby-buildインストール
* https://github.com/rbenv/ruby-build
```
# git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

### ruby インストール
```
# rbenv install -l
# rbenv install 2.3.0
# rbenv global 2.3.0
```

### vimインストール
* http://vim-jp.org/docs/build_linux.html

**上記サイトはubuntu環境で実行してるので
centos向けに**

```
# yum install yum-utils
# repoquery 'vim*'
->表示されたパッケージの依存調べる
# repoquery --requires --resolve [上で表示されたパッケージ名]
# yum install [上記で表示された依存パッケージ]

# yum install lua lua-devel
※ pythonとか入れる場合はdevelも
# git clone https://github.com/vim/vim.git
# cd vim

# ./configure --with-features=huge --enable-gui=gnome2 -enable-rubyinterp --enable-luainterp --enable-fail-if-missing
※ pythonとかry)

# make
# make install
````

### vim環境設定
```
# su - (使うユーザ)

$ curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

$ git clone git://github.com/ytnb/dotfiles.git
$ ln -s dotfiles/.vimrc .vimrc
※Macのやつなので一部修正

$ cd 
$ vim .vimrc
※初回はエラーがでますが気にせずEnter
※vim起動後、なにかインストールするかと聞かれたらY
```

* 編集箇所
```vim
"------solarized-----
の間の部分
"------solarized-----

syntax enable
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme soloarized

上記以外はコメントアウト
```

### The Silver Searcherインストール

* https://github.com/ggreer/the_silver_searcher

```
※ rhel7
rpm -Uvh http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
yum install the_silver_searcher

※ centOS
yum -y automake
=>依存あり
yum -y install pcre-devel xz-devel
git clone https://github.com/ggreer/the_silver_searcher.git
./build.sh
sudo make install
```

### gnome端末solarized化
1. gnome端末のメニューで「編集」-「新規」、プロファイル名：solarizedを作成
2. gnome solarizedインストール

        $ su - (使うユーザ)
        $ git clone git://github.com/Anthony25/gnome-terminal-colors-solarized.git
        $ cd gnome-terminal-colors-solarized
        $ ./install.sh
        dark
        lightはお好み
        プロファイルはsolarized

3. gnome端末メニュー「端末」、プロファイルの変更でsolarizedプロファイルに
4. フォルダ色変更

        $ vim .bashrc ※編集ファイルはディストリビューションによって異なるはず
        eval `dircolors ~/dotfiles/.dircolors-solarzed`
        $ source .bashrc

