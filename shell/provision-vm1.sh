# instalação do apache
sudo apt update -y
sudo apt install apache2 -y

# configuração para se conectar com a internet da VM3
echo "route add default gw 192.168.50.12" >> /etc/network/interfaces
sudo ip route add default via 192.168.50.12 
sudo iptables -t nat -A POSTROUTING -o enp3s0 -j MASQUERADE
