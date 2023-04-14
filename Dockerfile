FROM nginx:latest

ADD ./index.html /var/www/html
ADD ./nginx.conf /etc/nginx/nginx.conf

ADD ./ ./

#EXPOSE 8080

RUN adduser -D nginx
USER nginx


CMD gunicorn --bind 0.0.0.0:$PORT wsgi 
