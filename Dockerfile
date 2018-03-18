FROM alpine

LABEL maintainer="Ronny Freites <ronnyangelo.freites@gmail.com>"

RUN apk add --update nodejs nodejs-npm

# ------------------------------------------
# install the angular CLI
# ------------------------------------------
RUN npm install @angular/cli -g

COPY . /src

WORKDIR /src

# ------------------------------------------
# copy our initilization file and set permissions
# ------------------------------------------
COPY init.sh /init.sh
RUN chmod 755 /init.sh

CMD ["/init.sh"]