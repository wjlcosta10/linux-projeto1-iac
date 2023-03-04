#!/bin/bash

echo "# Copiando Diretórios: #"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "# Criando Grupos de Usuarios: #"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "# Criando Usuarios #"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
 
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Sebha123) -G GRP_SEC

echo "# Especificando Permissões dos Usuarios: #"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chown 770 /adm
chown 770 /ven
chown 770 /sec
chown 777 /publico

echo "# FIM #"


