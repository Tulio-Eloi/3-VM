Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  # VM1 - Servidor Web
  config.vm.define "vm1" do |vm1|
    vm1.vm.network "private_network", type: "dhcp", virtualbox__intnet: true

    # Adicione as linhas abaixo para definir o endereço IP estático
    vm1.vm.network "private_network", type: "dhcp", virtualbox__intnet: "intnet"
    vm1.vm.network "private_network", type: "static", virtualbox__intnet: "intnet", ip: "192.168.50.10"

    vm1.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end

    vm1.vm.hostname = "vm1"
    vm1.vm.provision "shell", path: "shell/provision-vm1.sh"

    vm1.vm.synced_folder "./pasta-compartilhada", "/var/www/html"
    # Configurar VM1 para usar VM3 como gateway
    vm1.vm.network "private_network", type: "dhcp", virtualbox__intnet: "intnet"
  end

  # VM2 - Servidor de Banco de Dados
  config.vm.define "vm2" do |vm2|

    # Configurar a rede privada com um endereço IP estático
    vm2.vm.network "private_network", type: "dhcp", virtualbox__intnet: "intnet"
    vm2.vm.network "private_network", type: "static", virtualbox__intnet: "intnet", ip: "192.168.50.20"

    vm2.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end

    vm2.vm.hostname = "vm2"

    # Instalando o Mysql
    vm2.vm.provision "shell", path: "shell/provision-vm2.sh"
  end

  config.vm.define "vm3" do |vm3|
    vm3.vm.box = "ubuntu/bionic64"
    vm3.vm.network "private_network", type: "static", virtualbox__intnet: "intnet", ip: "192.168.50.12"
    vm3.vm.network "public_network", type: "dhcp", bridge: "enp3s0"
    vm3.vm.provision "shell", path: "shell/provision-vm3.sh"
  end
end




