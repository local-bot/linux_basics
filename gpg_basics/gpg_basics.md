# GPG Basics

## Cretae key
~~~
gpg --full-gen-key
~~~
## List public keys (yours and other people's keys)
~~~
gpg --list-keys
~~~

## List private keys
~~~
gpg --list-secret-keys
~~~

## export gpg Keys
~~~
gpg --export -a insert_user > public.key
~~~

## Import Other Users’ Public Keys (--import)
~~~
# import key
gpg --import name_of_pub_key_file

# get fingerprint of key
gpg --fingerprint your_email@address.com
~~~

## Signing keys (--sign-key)
~~~
# option 1
gpg --sign-key BBBBBBBB

# option 2
gpg --sign-key email@example.com
~~~

## Encrypt and sign
~~~
# simple encryption
echo "hello world" | gpg --sign --armor

# Symmetric encrypt with signature
gpg --sign --symmetric message.txt

# Asymmetric encrypt with signature
gpg --sign --encrypt --recipient nanodano@devdungeon.com message.txt
~~~

## Decrypt (-d or --decrypt)
~~~
# Will automatically prompt for passphrase if symmetric
gpg -d message.txt.gpg

# Decrypt and put output in decrypted.txt
gpg -d message.txt.gpg > decrypted.txt

echo "owEBQgG9/......" | gpg -d
~~~

## Sign messages
~~~
gpg --clearsign message.txt
# Outputs message.txt.asc in plain text, suitable
# for pasting in an email or posting online

gpg --sign message.txt
# Outputs message.txt.gpg a binary file
~~~

## Verify signature
~~~
# Both of these can be verified with --decrypt, but they are not _actually_ encrypted.
gpg --decrypt message.txt.gpg
gpg --decrypt message.txt.asc
# This will print out the message along with the signature info
~~~
