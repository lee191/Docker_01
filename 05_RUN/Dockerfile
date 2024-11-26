FROM ubuntu:22.04

RUN apt -y update && apt -y upgrade
RUN apt -y install nginx
RUN apt clean

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]