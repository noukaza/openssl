# openssl

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
```
OR
```sh
$ openssl rsa -in keypar.pem -text -noout
```
#### protéger la clé privé généré avec des3
```sh
$ make q4
```
OR
```sh
$ openssl rsa -in keypar.pem -des3 -out keyparCh.pem
```
#### commande permettant de générer la clé publique
```sh
$ make q5
```
OR
```sh
$ openssl rsa -in keyparCh.pem -pubout -out publickey.pem 
```
#### commande permettant de chiffrer un message sauvegarder dans le fichier msgC
```sh
$ make q6
```
OR
```sh
$ sudo openssl rsautl -encrypt -in msg -out msgC -inkey publickey.pem -pubin 
```

```
make q7
```
```
make q8
```
```
make q9
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