FROM dandanwu/nginx_node8
COPY ./screen/dist /home/screen
COPY nginx/nginx.conf /etc/nginx/
COPY nginx/default.conf /etc/nginx/conf.d/
EXPOSE 80
COPY ./server /home/server
WORKDIR /home/server
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org && ln -s /usr/local/node-v8.9.1-linux-x64/lib/node_modules/cnpm/bin/cnpm /usr/local/bin/cnpm &&  cnpm install
CMD nginx && npm start
