
sudo apt-get install devscripts -y && mk-build-deps --install
cd pve-kernel && make submodule
