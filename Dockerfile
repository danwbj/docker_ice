FROM dandanwu/nginx_node8
COPY ./screen/dist /home/screen
COPY nginx/default.conf /etc/nginx/conf.d/
EXPOSE 80
COPY ./server /home/server
EXPOSE 8030
WORKDIR /home/server
RUN npm install
CMD npm start
