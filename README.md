[![N|Solid](https://www.giveffect.com/home/images/assets/logo-ssl.png)](https://namrane.com)

## exo 1

#### Donner la commande qui genere une clé RSA de 1024 bit 

```sh
$ make q1
   OR
$ openssl genrsa -out keypar.pem 1024
```
#### Donner la commande qui permet de visualiser le contenu du ficher "cé " en format text 
```sh
$ make q2
   OR
$ openssl rsa -in keypar.pem -text -noout
```
#### protéger la clé privé généré avec des3
```sh
$ make q4
   OR
$ openssl rsa -in keypar.pem -des3 -out keyparCh.pem
```
#### commande permettant de générer la clé publique
```sh
$ make q5
   OR
$ openssl rsa -in keyparCh.pem -pubout -out publickey.pem 
```
#### commande permettant de chiffrer un message sauvegarder dans le fichier msgC
```sh
$ make q6
   OR
$ sudo openssl rsautl -encrypt -in msg -out msgC -inkey publickey.pem -pubin 
```
####  commande permettant de chiffrer avec aes en utilisant un mot de passe
```sh
$ make q7
   OR
$ openssl rsautl -decrypt -in msgC -out resultmsg -inkey keypar.pem 
```
####  commande permettant de déchiffrer avec aes en utilisant un mot de passe
```sh
$ make q8
   OR
$ openssl enc -aes-256-cbc -pbkdf2 -in msg -out msgCaes -k passwordsss
```
#### la commande permettant de chifferer un fichier en utilisant le chiffrement blowfich en mode CBC
```sh
$ make q9
   OR
$ openssl enc -d -aes-256-cbc -pbkdf2 -in msgCaes -k password
```
### exo 2
```
make q10
```
```
make q11
```
```
make q12
```