# Contrução de VM para Administração de laboratório

#Objetivo do documento
<p>Ajudar a pessoa a inicializar as maquinas virtual a partir dos arquivos<p>

# 1 etapa realizar os seguinte passos para instalar os recursos que vão ser utilizados no projeto
## Passo 1 - abra o terminal
<p>Abra o terminal no seu sistema Linux. 
Isso geralmente pode ser feito pressionando `Ctrl + Alt + T` simultaneamente.</p>

## Passo 2 - atualize os pacote
<p>Antes de instalar qualquer novo software, é uma boa prática atualizar os pacotes do sistema. Execute os seguintes comandos no terminal:
sudo apt update
sudo apt upgrade</p>

## Passo 3: Instale o VirtualBo
<p>O Vagrant depende de um provedor de virtualização, como o VirtualBox. Para instalá-lo, use o seguinte comando:
sudo apt install virtualbo
</p>

## Passo 4: Instale o Vagrant
<p>Agora, você pode instalar o Vagrant usando o seguinte comando:
sudo apt install vagrant -y
</p>

## Passo 5: Verifique a Instalação
<p>Após a instalação, você pode verificar se o Vagrant foi instalado corretamente usando o seguinte comando:
vagrant --version 
</p>

# Inicializar as máquinas virtuais
## Passo 1 - Inicialização do Vagrant
<p>Entrar dentro da pasta em que foi clonado o repositório e clicar com o botão direito do mouse e selecionar: "abrir terminal", use o seguinte comando:</p>
<p>vagrant up</p>

# Entrar dentro de cada máquina
## Entrar na VM1
<p>Para entrar dentro da VM1, executar o seguinte comando:</p>
<p>vagrant ssh vm1</p>
<p>Atenção! Caso queira sair de dentro das VM1, clicar: CTRL + d</p>

## Entrar na VM2
<p>Para entrar dentro da VM2, executar o seguinte comando:</p>
<p>vagrant ssh vm2</p>
<p>Atenção! Caso queira sair de dentro das VM2, clicar: CTRL + d</p>

## Entrar na VM3
<p>Para entrar dentro da VM3, executar o seguinte comando:</p>
<p>vagrant ssh vm3</p>
<p>Atenção! Caso queira sair de dentro das VM3, clicar: CTRL + d</p>

