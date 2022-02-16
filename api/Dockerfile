FROM geekshubs/geekshubs-php-fom80-nginx
WORKDIR /var/www
COPY . .
EXPOSE 80
ADD ./init.sh /etc/init.sh
RUN chmod 777 /etc/init.sh
ENTRYPOINT [ "/etc/init.sh" ]
