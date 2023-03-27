#! /bin/bash

echo "Criando grupos..."
groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC 

echo "Criando diretórios..."
mkdir /publico /adm /ven /sec

echo "Alterando permissões dos diretórios..."
chmod 777 /publico
chmod 770 /adm /ven /sec

echo "Alterando proprietario e grupo dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Criando usuários do grupo GRP_ADM..."
useradd -m -G GRP_ADM -s /bin/bash -c "Carlos" carlos -p $(openssl passwd -1 Senha123)
passwd carlos -e
useradd -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Maria" maria
passwd maria -e
useradd -m -G GRP_ADM -s /bin/bash -p $(openssl passwd -1 Senha123) -c "João" joao
passwd joao -e

echo "Criando usuários do grupo GRP_VEN..."
useradd -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Debora" debora
passwd debora -e
useradd -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Sebastiana" sebastiana
passwd sebastiana -e
useradd -m -G GRP_VEN -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Roberto" roberto
passwd roberto -e

echo "Criando usuários do grupo GRP_SEC..."
useradd -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Josefina" josefina
passwd josefina -e
useradd -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Amanda" amanda
passwd amanda -e
useradd -m -G GRP_SEC -s /bin/bash -p $(openssl passwd -1 Senha123) -c "Rogerio" rogerio
passwd rogerio -e
