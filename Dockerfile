FROM thinca/vim:latest-full-alpine

COPY etc/vim/autoload/vim-plug/plug.vim /usr/local/share/vim/vim90/autoload
COPY etc/vimrc /usr/local/share/vim

VOLUME /project /.vim

RUN mkdir -p /.vim/plugged \
	&& chown 1000:1000 -R /.vim \
	&& apk update \
	&& apk upgrade \
	&& apk add git fzf
#RUN addgroup -g 1000 jhall && adduser -u 1000 -h /project -s /bin/bash jhall jhall
