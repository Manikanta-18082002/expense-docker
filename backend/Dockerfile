FROM node:20.15.0-alpine3.20 
# Above alpine os implemented nodejs 20
EXPOSE 8080
ENV DB_HOST=mysql 
# RUN useradd expense
# Above is error? OS is debian
RUN addgroup -S expense && adduser -S expense -G expense
# NOW OS is alpine need to create user and also group
RUN mkdir /opt/server
RUN chown expense:expense -R /opt/server
WORKDIR /opt/server
COPY package.json .
COPY *.js .
RUN npm install 
USER expense
CMD [ "node", "index.js" ]