
# Open SSL Basics

openssl list --digest-commands

# Output

blake2b512        blake2s256        gost              md2               
md4               md5               rmd160            sha1              
sha224            sha256            sha3-224          sha3-256          
sha3-384          sha3-512          sha384            sha512            
sha512-224        sha512-256        shake128          shake256          
sm3               

# create certificate
openssl req -newkey rsa:4096  -x509  -sha512  -days 365 -nodes -out certificate.pem -keyout privatekey.pem

# display certificate  -text to print the output of the certificate in text form
openssl x509 -noout -in certificate.pem -text 

# exctract public key outputing in PEM Format
openssl x509 -pubkey -noout -in certificate.pem

# convert to .pfx
openssl pkcs12 -export -out tld_2023.pfx -inkey domain.name.key -in domain.name.crt
