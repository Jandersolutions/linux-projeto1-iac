#!/bin/bash

echo "Criando os diretorios do sistema..."

mkdir /publico
echo "Diretorio Publico criado. (1/4)"

mkdir /adm
echo "Diretorio Adm criado. (2/4)"

mkdir /ven
echo "Diretorio Ven criado. (3/4)"

mkdir /sec
echo "Diretorio Sec criado. (4/4)"



echo "Criando os grupos de usuários do sistema..."

groupadd GRP_ADM
echo "Grupo de usuário GRP_ADM criado com sucesso. (1/3)"

groupadd GRP_VEN
echo "Grupo de usuário GRP_VEN criado com sucesso. (2/3)"

groupadd GRP_SEC
echo "Grupo de usuário GRP_SEC criado com sucesso. (3/3)"


echo "Criando os usuários do sistema e adicionando aos grupos de usuários..."

useradd jandersolutions -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário jandersolutions criado com sucesso. (1/9)"

useradd jandescience -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário janderscience  criado com sucesso. (2/9)"

useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "Usuário João  criado com sucesso. (3/9)"

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Maria criado com sucesso. (4/9)"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Carlos criado com sucesso. (5/9)"

useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
echo "Usuário Roberto criado com sucesso. (6/9)"

useradd vanessa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário Vanessa criado com sucesso. (7/9)"

useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Usuário Amanda criado com sucesso. (8/9)"

useradd felipe -m -s /bin/bash -p $(openssl passwd -crypt Senha124) -G GRP_SEC
echo "Usuário Felipe criado com sucesso. (9/9)"


echo "Definindo permissionamentos dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Configuração do Servidor Finalizada!"
