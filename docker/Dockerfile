FROM hub.docker.hpecorp.net/global-it/pagemill-nginx:2.0.0
MAINTAINER reddy43k@gmail.com

USER root

WORKDIR /home

RUN apk update && \
        apk add --no-cache ansible python py-pip bash curl \
        && rm -rf /tmp/* \
        && rm -rf /var/cache/apk/* \
        && rm -rf ~/.cache/

COPY . /home

COPY index.html /usr/share/nginx/html


#Copy the conf file 
COPY nginx.conf /etc/nginx/nginx.conf

#Container port which app is going to listen on...
EXPOSE 9090

#Set the default command to execute when creating a new container

RUN chmod +x entrypoint.sh

CMD ["sh", "entrypoint.sh"]
