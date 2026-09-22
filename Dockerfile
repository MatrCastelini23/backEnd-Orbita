# --- Estágio de Dependências e Base ---
FROM php:8.4-fpm-alpine AS base

# Instala extensões do sistema e do PHP necessárias para o Laravel e MySQL
RUN apk add --no-cache \
    bash \
    mysql-client \
    libpng-dev \
    libzip-dev \
    zip \
    unzip \
    git \
    curl \
    && docker-php-ext-install pdo_mysql gd zip

# Instala o Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

# --- Alvo de Desenvolvimento ---
FROM base AS dev

EXPOSE 8000
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]

# --- Alvo de Produção ---
FROM base AS prod
COPY . .
# Otimiza o Composer para produção (sem dependências de teste)
RUN composer install --no-dev --optimize-autoloader

# Ajusta as permissões para o servidor web (Nginx/PHP-FPM) conseguir ler/escrever
RUN chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache

EXPOSE 9000
CMD ["php-fpm"]
