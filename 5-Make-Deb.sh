#自动安装依赖
yes| mk-build-deps --install
#自动安装依赖之后，卸载deps包
yes| mk-build-deps --install --remove
#安装依赖
mk-build-deps --install
#编译deb
make deb

#跑完码就可以安装了
dpkg -i *.deb
