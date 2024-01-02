FROM archlinux-lemonbar
RUN git clone https://github.com/abatalev/lemonbar-xft.git
WORKDIR lemonbar-xft
RUN make
