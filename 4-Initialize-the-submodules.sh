sudo apt-get update && sudo apt-get upgrade
sudo apt-get install devscripts -y && mk-build-deps --install

#自动安装依赖
yes| mk-build-deps --install
#自动安装依赖之后，卸载deps包
yes| mk-build-deps --install --remove
#基本所有包，都可以通过make deb来进行编译，如果出现依赖问题，可以通过apt安装对应的依赖。

cd pve-kernel && make submodule
