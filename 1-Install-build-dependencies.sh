deb https://mirrors.ustc.edu.cn/debian/ bullseye main contrib non-free
deb https://mirrors.ustc.edu.cn/debian/ bullseye-updates main contrib non-free
deb https://mirrors.ustc.edu.cn/debian/ bullseye-backports main contrib non-free
deb https://mirrors.ustc.edu.cn/debian-security bullseye-security main contrib
#pve源
deb https://mirrors.ustc.edu.cn/proxmox/debian bullseye pve-no-subscription
#ceph源
deb https://mirrors.ustc.edu.cn/proxmox/debian/ceph-pacific bullseye main
#开发源，必须
deb https://mirrors.ustc.edu.cn/proxmox/debian/devel bullseye main


sudo apt install asciidoc-base automake bc bison cpio debhelper dh-python file flex gcc git kmod libdw-dev libelf-dev libiberty-dev libnuma-dev libpve-common-perl libslang2-dev libssl-dev libtool lintian lz4 perl-modules python-is-python3 python3-dev rsync sed sphinx-common tar xmlto zlib1g-dev

sudo apt  install -y devscripts  build-essential librust-openssl-sys-dev git git-email pkg-config debhelper pve-doc-generator  cmake bison dwarves flex libdw-dev libelf-dev libiberty-dev lz4 zstd librados-dev libtest-mockmodule-perl  check libcmap-dev libcorosync-common-dev libcpg-dev libfuse-dev libglib2.0-dev libpve-access-control libpve-apiclient-perl libquorum-dev librrd-dev librrds-perl libsqlite3-dev libtest-mockmodule-perl libuuid-perl rrdcached sqlite3  rsync libauthen-pam-perl libnet-ldap-perl  libpve-cluster-perl pve-cluster libjs-marked pve-eslint esbuild quilt   bash-completion dh-apparmor docbook2x libapparmor-dev libcap-dev libgnutls28-dev libseccomp-dev meson  libarchive-dev   libanyevent-perl   dh-python python3-all python3-setuptools python3-docutils liblocale-po-perl  help2man libpam0g-dev  libpve-storage-perl lxc-pve  libjpeg62-turbo-dev libpng-dev unifont  libspice-protocol-dev libspice-server-dev  libcap-ng-dev libio-multiplex-perl libjson-c-dev libpve-guest-common-perl libpve-storage-perl pve-edk2-firmware pve-firewall pve-ha-manager libposix-strptime-perl librados2-perl pve-qemu-kvm   zfsutils-linux libacl1-dev libaio-dev libattr1-dev libcap-ng-dev  libepoxy-dev libfdt-dev libgbm-dev libglusterfs-dev libiscsi-dev  libjemalloc-dev libjpeg-dev libnuma-dev libpixman-1-dev libproxmox-backup-qemu0-dev  librbd-dev libsdl1.2-dev  liburing-dev libusb-1.0-0-dev libusbredirparser-dev libvirglrenderer-dev libzstd-dev python3-sphinx python3-sphinx-rtd-theme texi2html xfslibs-dev abigail-tools  libpam0g-dev python3-cffi python3-all-dev

sudo apt install cargo debcargo -y

sudo apt install dwarves -y

sudo apt-get install fakeroot -y

#mk-build-deps
sudo apt-get install devscripts -y

apt-get update

apt-get upgrade

curl https://sh.rustup.rs -sSf | sh

rustup toolchain install nightly
#复制nightly toolchain 并且重命名为system.因为PVE开发团队代码定义system作为toolchain，所以拷贝
cp -a ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/ ~/.rustup/toolchains/system
rustup default system
# rustup toolchain link system /usr
# rustup default system

cd /opt
git clone https://salsa.debian.org/rust-team/debcargo.git

cd /opt/debcargo
cargo build --release 
ln -s /opt/debcargo/target/release/debcargo /usr/bin/

