# dotfiles

## centos 6.5


* gitインストール
```
yum install git
※最新版なら別方法
```

* rbenvインストール

* ruby 2.2.2インストール

* vimインストール
```
(http://vim-jp.org/docs/build_linux.html)※ubuntuなのでパッケージ名は違う
yum install mercurial gettext libncurses5-dev libacl1-dev libgpm-dev
yum install libxmu-dev libgnomeui-dev libxpm-dev
yum install lua lua-devel
※pythonとか入れる場合はdevelも
hg clone https://vim.googlecode.com/hg/ vim
cd vim

hg pull
hg update

./configure --with-features=huge --enable-gui=gnome2 -enable-rubyinterp --enable-luainterp --enable-fail-if-missing

make
make install
````

* vim環境設定
```
su - (使うユーザ)

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

git clone git://github.com/ytnb/dotfiles.git
ln -s dotfiles/.vimrc .vimrc
※Macのやつなので一部修正

cd 
vim .vimrc
※初回はエラーがでますが気にせずEnter
※vim起動後、なにかインストールするかと聞かれたらY
```

・編集箇所
```
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

* gnome端末solarized化
 - gnomeプロファイル作成
gnome端末のメニューで「編集」
「新規」
プロファイル名：solarized
```
su - (使うユーザ)

git clone git://github.com/Anthony25/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh

dark
lightはお好み

プロファイルはsolarized
```
完了したらgnome端末メニュー「端末」
プロファイルの変更でsolarizedプロファイルに
※デフォルトをsolarizedプロファイルにする場合はgonme端末のメニューで「編集」「プロファイル」

このままだと背景は変わったが
フォルダとかの色が変わらんので
```
vim .bashrc ※編集ファイルはディストリビューションによって異なるはず

eval `dircolors ~/dotfiles/.dircolors-solarzed`

source .bashrc
```
