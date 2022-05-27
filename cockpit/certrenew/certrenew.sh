#! /bin/sh
#Descrição:
#	Script para atualização do certificado HTTPS do Cockpit
#Dependencias:
#	Certbot configurado e renovação funcionando corretamente

DOMAIN=$1
cat /etc/letsencrypt/live/$DOMAIN/*.pem > /etc/cockpit/ws-certs.d/50-letsencrypt.cert
certmonger request -f /etc/letsencrypt/live/$DOMAIN/cert.pem -k /etc/letsencrypt/live/$DOMAIN/privkey.pem -D $DOMAIN -C /etc/cockpit/ws-certs.d/50-letsencrypt.cert
remotectl certificate
systemctl restart cockpit
