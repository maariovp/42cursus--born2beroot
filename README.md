# Born2beroot - 42 cursus

## **Introdução** 

Born2beroot e um projeto da 42 na qual tem o objetivo de te ensinar a manipular a Virtual Box, ensinando a rodar maquinas virtuais e as configuralas em sua máquina.

## **Vitual Machine Box**

Uma  máquina virtual é um **software capaz de instalar um sistema operacional dentro da sua máquina sem afetar o seu próprio sistema operacional**, com máquina virtuais podemos criar dispositivos virtuais que se comportarão da mesma forma que os dispositivos físicos, usando sua própria CPU, memória, interface de rede e armazenamento.Todos os rescursos de Hardware exigidos pela VMBOX são cedidos pela sua máquina real.

<ul>
    <li>Máquinas convidadas diferentes hospedadas em nosso computador <b>podem executar sistemas operacionais diferentes</b>, portanto teremos sistemas operacionais diferentes trabalhandi na mesma máquina.</li>
    <li>Obtemos um <b>melhor uso dos recursos compartilhados.</b></li>
    <li>Reduzimos<b>custos</b>na arquitetura física.</li>
    <li>Eles fornecem um abiente no qual<b>testar programas instáveis com segurança</b>para ver se eles afetarão o sistema ou não.</li>
    <li>Eles são<b> fáceis de implementar</b>porque fornecem mecanismos para clonar uma máquina virtual em outro dispositivos físico.</li>
</ul>

## **LVM**

**LVM (Logical volume Manager)** é uma **camada de abstração entre um dispositivo de armazenamento e um sistema de aruqivos.** Obtemos muitas vantagens ao usar o LVM, mas a principal vantagem é que temos muito mais flixibilidade quando se trata de gerenciar partições.
<ul>
<li><b>Volume FISICO (PV):</b> dispositivo de armazenamento físico. Pode ser um disco rígido, um cartão SD, um disquete, etc. Este dispositivo nos fornece armazenamento disponível para uso.</li>
<li><b>Grupo de Volumes (VG): </b>para utilizar o espaço fornecido por um PV, ele deve ser alocado em um grupo de volumes. É como um disco de armazenmento virtual que será usado por volumes lógicos. Os VGs podem crescer ao longo do tempo adicionando novos VPs.</li>
<li><b>Volume lógico (LV): </b>esses dispositivos serão os que usaremos para criar sistemas de arquivos, swaps, máquinas virtuais, etc. Se o VG dor disco de armazenamento, os LV são as partições que são feitas nesse disco.</li>
</ul>

## **AppArmor**

O AppArmor fornece **segurança de controle de acesso obrigatório (MAC)**. Na verdade, o **AppArmor permite que o administrador do sistema restrinja as ações que os processos podem realizar**. Por exemplo, se um aplicativo instalado puder tirar fotos acessando o aplicativo da câmera, mas o administrador negar esse privilégio, o aplicativo não poderá acessar o aplicativo de câmera.

## **Apt and Aptitute**

Em distribuições de SO baseadas em Debian, o **o gerenciador de pacotes padrão que podemos usar é dpkg.**<br>

Está ferramenta nos permite instalar, remover e gerenciar programas em nosso sistema operacional. No entanto, na maioria dos casos, esses programas vêm com uma lista de dependências que devem ser instaladas para que o programa principal funcione corretamente. Uma opção é instalar manualmente essas dependências. No entanto , **o APT (Advanced Package Tool)**, que é uma ferramenta que usa dpgk , **pode ser usado para instalar todas as dependências necessárias ao instalar um programa**. Agora podemos instalar um programa útil com um único comando.<br>

APT pode trabalhar com diferentes back-ends e front-ends para fazer uso de seus serviços. Um deles é o **apt-get**, que nos permite **Instalar e remover pacotes.** Junto com o apt-get, também existem muitas ferramentas como o apt-cache para gerenciar programas. Nesse caso, **apt-get e apt-cache são usados por apt.** Graças ao apt podemos instalar programas .deb facilmente e sem nos preocupar com dependências. Mas casi queiramos usar uma interface gráfica, teremos que usar o apitude. **O aptitude também faz um melhor controle das dependências**, permitindo ao usuário escolher entre diferentes dependências ao instalar um programa.

## **SSH** 

SSH ou **Secure Shell** é um protocolo de adminitração remota que permite aos usuários controlar e modificar seus servidores, atráves da internet, graças a um mecanismo de autenticação. Fornece um mecanismo para autenticar um usuário remotamente, transferir dados do cliente para o host e retornar uma resposta à solicitação feita pelo cliente.<br>

O SSH foi criado como uma alternativa ao Telnet, que não criptografa as informações que são enviadas. **SSH usa tecnicas de criptografia** para garantir que todas as comunicações de cliente para host e de host para cliente sejam feitas de forma criptografada. Umas das vantagens de SSh é que um usuário que usa Linux ou MacOS pode usar o SSH em seu servidor para se comunicar com ele remotamente através do terminal de seu computador. Uma vez autenticado, esse usuário poderá usar o terminal para trabalhar no servidor.

    ssh {username}@{IP_host} -p {port}

Existem très técnicas diferentes que o SSH usa pra criptografar:

<ul>
<li><b>Criptografia simétrica: </b>um método que usa a mesma chave secreta para criptografar e descriptografar uma mensagem, tanto para o cliente quando para o host. Qualquer pessoa que saiba a senha pode acessar a mensagem que foi trnsmitida.</li>
<li><b>Criptografia assimétrica: </b>usa duas chaves separadas para criptografar e descriptografar. Estas são conhecidas como chave pública e chave privada. Juntos, eles formam o par chave pública-privada.</li>
<li><b>Hashing: </b>outra forma de criptografia usada pelo SSh. As funções de hash são feitas de forma que não precisem ser descriptografadas. Se um cliente tiver a entrada correta, ele poderá criar um hash criptográfico e o SSh verificará se os dois hashes são iguais.</li>
</ul>

## **UFW + SSH**

O **UFW (Uncomplicated Firewall)** é um aplicatico de software responsável por garantir que o administrador do sistema possa **gerenciar o iptables de maneiras simples**. Como é muito difícil trabalhar com iptables, o UFW nos fornece uma interface para modificar o firewall do nosso dispositivo **(netfilter)** sem comprometer a segurança.<br>

Depois de instalar o UFW, podemos escolher quais portas queremos permitir conexões e quais portas queremos fechar. Isso também será muito útil com o SSH, melhorando muito toda a segurança relacionada às comunicações entre os dispositivos.<br>

## **CRON** 

O **Cron** gerenciador de tarefas do Linux que nos permite executar comando s em um determinado momento. Podemos automatizar algumas tarefas apenas informando ao cron qual comando queremos executar em um hórario específico. Por exemplo, se quisermos reinicar nosso servidor todos os dias às 17:00, em vez de ter que ir nesse hórario, o cron fará isso por nós.

## **WALL**

O **Wall** comando utilizado pelo usuário root para enviar mensagem a todos os usuários atualmente conectados ao servidor. Se o administrador do sistema deseja alertar sobre uma alteração importante no servidor que pode fazer com que os usuários saiam, o usuário root pode alertá-lo com wall.
<br>

# **COMANDOS TERMINAL**

## **USUARIO**

Adicionar um usuário:

    sudo adduser <username>

Verifique o usuário:

    getent passwd <username>

Informações sobre senha do usuário:

    sudo chage -l <username>

## **GRUPOS**

Adicionar um grupo:

    sudo addgroup <group_name>

Adicionar um usuário a um grupo:

    sudo adduser <username> user42

Verificar um grupo:

    sudo group <group_name>

## **SUDO**

Instalar o sudo:

    apt install sudo

Verifique:

    dpkg -l | grep sudo

Adicionar usuário:

    adduser <username> sudo

Grupo sudo:

    getent group sudo

## **SSH**

Instalar o ssh:

    sudo apt install openssh-server

Verifique: 

    dpkg -l | grep ssh

Status: 

    sudo service ssh status

## **UFW**

Instalar:

    sudo apt install ufw

Verifique:

    dpkg -l | grep ufw

Habilitar Firewall:

    sudo ufw enable

Permitir conexões em determinada porta:

    sudo ufw allow <port_name>

Status:

    sudo ufw status

## **GERENCIAMENTO DE SENHAS FORTES**

Instale pacote libpam-pwquality:

    sudo apt install libpam-pwquality

Verifique:

    dpkg -l | grep libpam_pwquality

## **CRON**

Configure cron:

    sudo crontab -u root -e

Agendar uma tarefa:

    */10 * * * * sh <file_directory>
<br>

# **BONUS PART** 

Instale Lighttpd:

    sudo apt install lighttpd

Verifique 

    dpkg -l | grep lighttpd

Permitir conexões

    sudo ufw allow 80

## **MARIA DB**

Instale o MariaDB:

    sudo apt install mariadb-server

Verifique:

    dpkg -l | grep mariadb-server

Remove config padrões do Maria:

    sudo mysql_secure_installation

Fazer login:

    sudo mariadb

PROCESSOS DATABASE:

    CREATE DATABASE <database-name>;

    GRANT ALL ON <database-name>.* TO '<username-2>'@'localhost' IDENTIFIED BY '<password-2>' WITH GRANT OPTION;

    FLUSH PRIVILEGES

    exit

Verifique se o usuário foi criado:

    mariads -u <username-2> -p
    Enter password: <password-2>

Mostrar DATABASE

    SHOW DATABASES;

## **PHP**

Instale o php:

    sudo apt install php-cgi php-mysql

Verique:  

    dpkg -l | grep php

## **WORDPRESS**

Instale **wget**:

    sudo apt install wget

Baixe o WordPress:

    sudo wget https://wordpress.org/lastest.tar.gz -P /var/www/html/

Extraia o conteudo:

    sudo tar -xzvf /var/www/html/lastest.tar.gz

Remova o arquivo de download:

    sudo rm /var/www/html/lastest.tar.gz

Copie o conteudo:

    sudo cp -r /var/www/html/wordpress/* /var/www/html/

Remover /var/www/html/wordpress:

    sudo rm -rf /var/www/html/wordpress

Crie o arquivo de configuração do Wordpress:

    sudo cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

Configure o Wordpress com DB:

    sudo vim /var/www/html/wp-config.php

Substituir:

    define( 'DB_NAME', '<database-name>');
    define( 'DB_USER', '<username-2>');
    define( 'DB_PASSWORD', '<password-2>');

Configure o Lighttpd

    sudo lighty-enable-mod fastcgi
    sudo lighty-enable-mod fastcgi-php
    sudo service lighttpd force-reload

## **PROTOCOLO FTP**

Instale:

    sudo apt install vsftpd

Verifique:

    dpkg -l | grep vsftpd

Permitir conexões na porta 21:

    sudo ufw allow 21

Configure p vsttpd

    sudo vim /etc/vsftpd.conf

Linha 31 habilite o:
    
    write_enable=YES

Config FTP:

    sudo mkdir /home/<username>/ftp
    sudo mkdir /home/<username>/ftp/files
    sudo chown nobody:nogroup /home/<username>/ftp
    sudo chmod a-w /home/<username>/ftp
    <--->
    user_sub_token=$USER
    local_root=/home/$USER/ftp
    <--->

Limitar comandos do usuário:

    chroot_local_user=YES

FTP na lista de permissões:

    sudo vim /stc/vsftpd.userlist
    echo <username> | sudo tee -a /etc/vsftpd.userlist
    <--->
    userlist_enable=YES
    userlist_file=/etc/vsftpd.userlist
    userlist_deny=NO
    <--->

Conectar FTP:

    ftp <ip-adress>
