#! /bin/sh
#Descrição:
#	Script para configuração de repositórios do Apt
#Dependencias:
#	Apt get

mkdir -p /etc/apt/.backup
cp /etc/apt/sources.list /etc/apt/.backup/sources.list

echo "deb http://deb.debian.org/debian bullseye main contrib non-free" > /etc/apt/sources.list
echo "deb http://deb.debian.org/debian-security/ bullseye-security main contrib non-free" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian bullseye-updates main contrib non-free" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian bullseye-backports main contrib non-free" >> /etc/apt/sources.list

apt update
