#! /bin/bash
sudo apt-get install autoconf \
automake autotools-dev curl \
python3 python3-pip python3-tomli \
libmpc-dev libmpfr-dev libgmp-dev \
gawk build-essential bison flex texinfo \
gperf libtool patchutils bc zlib1g-dev \
libexpat-dev ninja-build git cmake libglib2.0-dev \
libslirp-dev libncurses-dev libjim-dev \
libc6-i386 libc6-i386-cross libstdc++6-i386-cross
git clone https://github.com/hpmicro/hpm_sdk &&
git clone https://github.com/riscv/riscv-gnu-toolchain && cd riscv-gnu-toolchain && ./configure --prefix=/opt/riscv --enable-multilib && sudo make
echo 'export PATH=/opt/riscv/bin:$PATH' >> ~/.bashrc
echo 'export GNURISCV_TOOLCHAIN_PATH=/opt/riscv' >> ~/.bashrc

source ~/.bashrc

git clone https://github.com/openocd-org/openocd.git && cd openocd && ./bootstrap && ./configure && make && sudo make install

