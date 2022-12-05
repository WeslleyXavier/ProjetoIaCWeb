#!bin/bash

echo -e "Criando diretórios...\n"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo -e "Diretórios criados com sucesso!\n"

echo -e "Criando Grupos de Usuários...\n"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo -e "Grupos criados com sucesso!\n"

echo -e "Criando usuários...\n"
useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM
useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN
useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC
echo -e "Usuários criados com sucesso!\n"

echo -e "Atribuindo Grupos de Usuários...\n"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo -e "Grupos atribuidos com sucesso!\n"

echo -e "Atribuindo permissões de Usuário...\n"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo -e "Permissões atribuidas com sucesso!\n"

echo -e "Fim do script!\n"

