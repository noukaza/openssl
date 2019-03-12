q1:
	openssl genrsa -out keypar.pem 1024
q2:
	openssl rsa -in keypar.pem -text -noout
q4:
	openssl rsa -in keypar.pem -des3 -out keyparCh.pem
q5: 
	openssl rsa -in keyparCh.pem -pubout -out publickey.pem 
q6: 
	sudo openssl rsautl -encrypt -in msg -out msgC -inkey publickey.pem -pubin
q7:
	openssl rsautl -decrypt -in msgC -out resultmsg -inkey keypar.pem 
q8:
	openssl enc -aes-256-cbc -pbkdf2 -in msg -out msgCaes -k passwordsss
q9: 
	openssl enc -d -aes-256-cbc -pbkdf2 -in msgCaes -k password
q10:
	openssl enc -bf-cbc -in msg -out bf-cbc.pem
q11:
	openssl enc -bf-cbc -pbkdf2 -in msg -out bf-cbc.chiffre 
q12: 
	openssl enc  -bf-cbc -d -pbkdf2 -in bf-cbc.chiffre
q13:
	openssl rc4 -in msg -out msgRC4
q14:
	openssl rc4 -in msg -out msgRC4 -k password
q15: 
	openssl rc4 -d -in msgRC4
q16:
	openssl rc4 -in msg -out msgRC4 -k password -nosalt
q17: 
	openssl rc4 -d -in msgRC4 -nosalt
q18:
	openssl rc4 -in msg -out msgRC4 -K 2 -iv 40
