sudo apt-get update && sudo apt-get upgrade && sudo apt-get install devscripts -y && mk-build-deps --install
cd pve-kernel && make submodule
