FROM ubuntu:16.04

# request by aosp
RUN apt-get update

RUN apt-get install -y openjdk-8-jdk git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip

# request addition
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-requests
RUN apt-get install -y emacs tmux
RUN apt-get install -y jq gdb

RUN mkdir -p /usr/bin
RUN export PATH="/usr/bin:$PATH"
RUN curl "https://storage.googleapis.com/git-repo-downloads/repo" > /usr/bin/repo
RUN chmod a+x /usr/bin/repo

RUN alias emacs="emacs --color=no"

RUN mkdir -p /data/
RUN touch /data/.gitcookies
RUN chmod 0600 /data/.gitcookies
RUN git config --global http.cookiefile /data/.gitcookies
RUN git config --global user.name "Jun"
RUN git config --global user.email "changchunjunhao@gmail.com"
RUN echo '.googlesource.com,TRUE,/,TRUE,2147483647,o,git-changchunjunhao.gmail.com=1/hOHftmjJH7w1D4d3xLqKfZlu0apYsG7-v_a0iIcNksY' >> /data/.gitcookies

RUN echo '(setq backup-directory-alist `(("." . "~/.saves")))' >> ~/.emacs
RUN echo "(put 'upcase-region 'disabled nil)" >> ~/.emacs

RUN export HISTFILE=/data/experiment/.dockerhistory