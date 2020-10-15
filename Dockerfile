FROM ubuntu
ENV TZ=America
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install nginx git -y
RUN cd /var/www/html/ && git clone https://github.com/Ether1Project/ethofs-upload-dashboard .
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
