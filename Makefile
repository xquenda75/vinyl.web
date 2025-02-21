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
	ssh -i ../aws_config/webserverlinux.pem ubuntu@54.152.192.5

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
	sudo /etc/init.d/nginx restart

	ssh-keygen

	git config --global user.name "Jorge A Lopez"  
	git config --global user.email "xquenda14@yahoo.com.mx"

	sudo apt install nodejs
	sudo apt install npm

	sudo ln -s /etc/nginx/sites-available/vinyl-app /etc/nginx/sites-enabled/

#Cuenta AWS 390403871044

aws-s3-sync:
	aws s3 sync dist s3://website-vinyl --delete --acl 'public-read'

aws-eb-install:
	pip install awsebcli --upgrade --user

aws-validate:
	python --versions
	pip --version
	eb --version


