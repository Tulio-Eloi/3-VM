# Configuração do encaminhamento de pacotes para atuar como um gateway
echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf && sysctl -p
sudo iptables -t nat -A POSTROUTING -o enp3s0 -j MASQUERADE
