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
	openssl enc -aes-256-cbc -pbkdf2 -in msg -out msgCaes -k password
