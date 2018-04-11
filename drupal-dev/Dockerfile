FROM alpine:3.7
MAINTAINER TWN

RUN	apk update && \
	apk upgrade && \
	apk --update add \
	bash \
	curl \
	git \
	zlib \
	apache2 \
	postgresql-client \
	php7 \
	php7-apache2 \
        php7-bcmath \
        php7-dom \
        php7-ctype \
        php7-curl \
        php7-fileinfo \
        php7-fpm \
        php7-gd \
        php7-iconv \
        php7-intl \
        php7-json \
        php7-mbstring \
        php7-mcrypt \
        php7-mysqlnd \
        php7-opcache \
        php7-openssl \
        php7-pdo \
        php7-pdo_pgsql \
        php7-phar \
        php7-posix \
        php7-simplexml \
        php7-session \
        php7-soap \
        php7-tokenizer \
        php7-xml \
        php7-xmlreader \
        php7-xmlwriter \
	php7-zip \
	php7-zlib \
&& \
rm -rf /var/cache/apk/* && \
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
composer global require drush/drush && \
composer global update && \
ln -s /root/.composer/vendor/bin/drush /usr/local/bin/drush && \
mkdir -p /app/web && chown -R apache:apache /app && \
mkdir /run/apache2 && \
sed -i 's#^DocumentRoot ".*#DocumentRoot "/app/web"#g' /etc/apache2/httpd.conf && \
sed -i 's#/var/www/localhost/htdocs#/app/web#' /etc/apache2/httpd.conf && \
sed -i 's#AllowOverride None#AllowOverride All#' /etc/apache2/httpd.conf && \
echo "Success"

ADD run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 80

VOLUME /app
WORKDIR /app

ENTRYPOINT ["/run.sh"]
