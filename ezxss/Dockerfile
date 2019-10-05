FROM php:7.3-fpm
RUN apt-get update && apt-get install -y \
        curl \
        wget \
        git \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
	libzip-dev \
    && docker-php-ext-install -j$(nproc) \
	iconv \
	mbstring\
	mysqli\
	pdo_mysql\
	zip\
	json 
    
CMD ["php-fpm"]
