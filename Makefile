q1:
	openssl genrsa -out keypar.pem 1024
q2:
	openssl rsa -in keypar.pem -text -noout
q4:
	openssl rsa -in keypar.pem -des3 -out keyparCh.pem