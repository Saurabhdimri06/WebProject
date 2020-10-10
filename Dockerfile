From node

ADD checklist-app /project/
WORKDIR /project/

RUN npm install

EXPOSE 3000/tcp
