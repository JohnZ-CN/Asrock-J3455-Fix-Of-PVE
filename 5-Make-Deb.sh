#git clone -b pve-kernel-5.15 git://git.proxmox.com/git/pve-kernel.git pve-kernel
git clone https://git.proxmox.com/git/pve-kernel.git
cd pve-kernel
#安装依赖
mk-build-deps --install
#编译deb
make deb
