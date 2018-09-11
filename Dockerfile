FROM luzifer/alpine-nginx-php

ENV ROUNDCUBE_VERSION=1.3.7 \
    RCMCARDDAV_VERSION=3.0.2

RUN set -ex \
 && apk --no-cache add \
      gnupg \
      php7-curl \
      php7-dom \
      php7-exif \
      php7-fileinfo \
      php7-iconv \
      php7-imagick \
      php7-intl \
      php7-json \
      php7-ldap \
      php7-mbstring \
      php7-mysqli \
      php7-openssl \
      php7-pdo \
      php7-pdo_mysql \
      php7-pdo_sqlite \
      php7-session \
      php7-sockets \
      php7-sqlite3 \
      php7-zip \
 && curl -sSfL "https://github.com/roundcube/roundcubemail/releases/download/${ROUNDCUBE_VERSION}/roundcubemail-${ROUNDCUBE_VERSION}-complete.tar.gz" | \
      tar -xz --strip-components=1 -C /var/www \
 && curl -sSfL "https://github.com/blind-coder/rcmcarddav/releases/download/v${RCMCARDDAV_VERSION}/carddav-${RCMCARDDAV_VERSION}.tar.bz2" | \
      tar -xj -C /var/www/plugins \
 && cp /var/www/plugins/carddav/config.inc.php.dist /var/www/plugins/carddav/config.inc.php

COPY rootfs /

VOLUME ["/var/www/db"]
