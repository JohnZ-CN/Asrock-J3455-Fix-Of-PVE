rm /etc/apt/sources.list.d/pve-enterprise.list

export LC_ALL=en_US.UTF-8
apt update && apt -y install git && git clone https://github.com/ivanhao/pvetools.git
cd pvetools
./pvetools.sh

#卸载：
#删除下载的pvetools目录
#运行
#在shell中进入pvetools目录，输入 ./pvetools.sh
#如果提示没有权限，输入chmod +x ./*.sh
