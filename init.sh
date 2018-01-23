export LANG=en_US.utf-8
git config --global user.email changchunjunhao@gmail.com
git config --global user.name zhengjunhao
git config --global core.editor emacs

alias emacs="emacs --color=no"
cat >> ~/.emacs <<EOF
(setq backup-directory-alist \`(("." . "~/.saves")))
(put 'upcase-region 'disabled nil)

(setq c-default-style "linux"
     c-basic-offset 4)

EOF


