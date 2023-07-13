openssl genrsa >> private.pem

openssl rsa -in private.pem -pubout -out public.pem

echo "this is yout public key"
cat public.pem





