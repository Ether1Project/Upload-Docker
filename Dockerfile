FROM ubuntu
RUN apt-get update
RUN apt-get install nginx git -y
RUN git clone https://github.com/Ether1Project/ethofs-upload-dashboard /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
