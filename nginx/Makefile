image = duyuyang/nginx-ssl

help:
	@printf "%s\n" "make build:        Build"
	@printf "%s\n" "make tag TAG=0.1   Tag"
	@printf "%s\n" "make run:          Run"

all: dir ca server sign build
run: clean nginx

dir:
	mkdir cert csr private

ca: # Create root CA
	../auto/createca.sh

server: # Create a key (server-key.pem) and signing request (CSR - server-req.pem) for the server
	openssl req -new -nodes -out csr/server-req.pem -keyout private/server-key.pem -days 365 -config openssl.cnf

sign: # CA sign the server’s CSR, create public certificate (server-cert.pem)
	openssl ca -out cert/server-cert.pem -days 365 -config openssl.cnf -infiles csr/server-req.pem

build:
	docker build -t $(image) .

tag:
	docker tag $(image):latest $(image):$(TAG)

nginx:
	docker run -d --name nginx-ssl -p 80:80 -p 443:443 $(image):latest

clean:
	docker rm -f nginx-ssl || echo 'all clear'