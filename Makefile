npm-install:
	npm install

#Si exiten problemas con las dependencias, se puede ejecutar el siguiente comando
npx-npm-check-updates:
	npx nmp-check -u

npm-i-formik:
	npm install formik

npm-i-yup:
	npm install yup

npm-i-dotenv:
	npm install dotenv

login-ec2-ubuntu:
	ssh -i ../aws_config/webserverlinux.pem ubuntu@3.95.137.126

update-ubuntu:
	sudo apt update && sudo apt upgrade -y

install-nginx:
	sudo apt install nginx -y
	sudo systemctl start nginx
	sudo systemctl enable nginx
	sudo systemctl status nginx
	sudo ufw status
	sudo ufw allow 'Nginx HTTP'
	sudo ufw allow 'Nginx Full'

	nano default
	/etc/init.d/nginx restart

	git config --global user.name "Jorge A Lopez"  
	git config --global user.email "xquenda14@yahoo.com.mx"