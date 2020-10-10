From node

ADD School-web-application-master /project
WORKDIR /project

RUN npm install

EXPOSE 3000/tcp
