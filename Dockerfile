FROM devkitpro/devkita64:latest

RUN cd /tmp \
    && git clone https://github.com/WerWolv/libtesla.git \
    && cp -r libtesla/include/* /opt/devkitpro/portlibs/switch/include/ \
    && rm -rf libtesla