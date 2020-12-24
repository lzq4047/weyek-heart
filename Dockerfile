FROM node

COPY . /root/app/heart
WORKDIR /roo/app/heart

RUN ["npm", "set", "registry", "https://registry.npm.taobao.org/"]

RUN ["npm", "install", "-g", "http-server"]

CMD ["hs", "-p 80"]
