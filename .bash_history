sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y          # 包含内核、系统关键包的替换升级
sudo apt autoremove -y
sudo apt autoclean
sudo dnf autoremove -y
sudo dnf clean all
sudo reboot
sudo vim /etc/ssh/sshd_config
echo "net.core.default_qdisc=fq" | sudo tee -a /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
echo "* soft nofile 655360" | sudo tee -a /etc/security/limits.conf
echo "* hard nofile 655360" | sudo tee -a /etc/security/limits.conf
echo "fs.file-max = 512000" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
sudo apt install fail2ban -y
sudo systemctl enable --now fail2ban
sudo systemctl stop ssh.socket
sudo systemctl disable ssh.socket
sudo systemctl enable ssh.service
sudo systemctl start ssh.service
ss -tuln | grep :1212
sudo systemctl enable ssh.service
sudo systemctl start ssh.service
sudo systemctl restart ssh
ss -tuln | grep :1212
sudo vim /etc/ssh/sshd_config
sudo systemctl stop ssh.socket
sudo systemctl disable ssh.socket
sudo systemctl enable ssh.service
sudo systemctl start ssh.service
sudo systemctl restart ssh
ss -tuln | grep :1212
apt install ufw
ufw enable
ufw allow 1212
ufw allow 24784/tcp
ufw allow 24784/udp
cd /etc
rm /sing-box
rm sing-box
rm -r sing-box
cd sing-box
ls
2;23;25Mbash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install
cd /xray
vim /etc/xray/config.json
sing-box generate rand --base64 32
