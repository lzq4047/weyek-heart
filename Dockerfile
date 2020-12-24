FROM node
# set npm registry
RUN ["npm", "set", "registry", "https://registry.npm.taobao.org/"]

# install http-server globally
RUN ["npm", "install", "-g", "http-server"]

# copy files
COPY fonts /root/app/heart/fonts
COPY index.html /root/app/heart/index.html

# set work directory
WORKDIR /root/app/heart

# start server at port 8080
CMD ["hs", "-p 8080"]
