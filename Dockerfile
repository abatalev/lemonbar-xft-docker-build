FROM archlinux
RUN pacman --noconfirm -Syu
RUN pacman --noconfirm -S git gcc make
RUN pacman --noconfirm -Syu libxcb libx11 libxft
RUN git clone https://github.com/abatalev/lemonbar-xft.git
WORKDIR lemonbar-xft
RUN make
