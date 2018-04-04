export LANG=en_US.utf-8
git config --global user.email changchunjunhao@gmail.com
git config --global user.name zhengjunhao
git config --global core.editor "emacs --color=no -nw"

sudo apt-get update

# emacs
echo Y | sudo apt-get install emacs
cat >> ~/.bashrc <<EOF
alias emacs="emacs --color=no -nw"
EOF
cat >> ~/.emacs <<EOF
(setq backup-directory-alist \`(("." . "~/.saves")))
(put 'upcase-region 'disabled nil)

(setq c-default-style "linux"
     c-basic-offset 4)

EOF

# hosts
# [ -e "/etc/hosts.bak" ] || sudo cp /etc/hosts /etc/hosts.bak
# cd /tmp
# git clone https://github.com/googlehosts/hosts.git
# f=`find hosts/ -name hosts`
# [ -e "$f" ] && {
#     cat $f >> /etc/hosts
# }
# cd -

# install others
echo Y | sudo apt-get install python3 tmux meld

# set capslock as ctrl
sudo sed -e "/XKBOPTIONS/s/.*/XKBOPTIONS=\"ctrl:nocaps\"/" -i /etc/default/keyboard

# install docker
echo Y | sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
echo Y | sudo apt-get install docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER
