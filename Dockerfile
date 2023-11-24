FROM archlinux
RUN pacman --noconfirm -Syu
RUN pacman --noconfirm -S git gcc make
RUN pacman --noconfirm -Syu libxcb libx11 libxft
RUN git clone https://gitlab.com/protesilaos/lemonbar-xft
WORKDIR lemonbar-xft
RUN make
RUN pacman --noconfirm -S tree
RUN tree .
