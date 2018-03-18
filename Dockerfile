FROM node:8

LABEL maintainer="Ronny Freites <ronnyangelo.freites@gmail.com>"

# ------------------------------------------
# install the angular CLI
# ------------------------------------------
RUN npm install -g @angular/cli

# ------------------------------------------
# change the work directory
# ------------------------------------------
WORKDIR /var/www

# ------------------------------------------
# copy our initilization file and set permissions
# ------------------------------------------
COPY init.sh /init.sh
RUN chmod 755 /init.sh

CMD ["/init.sh"]