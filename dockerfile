FROM php:8.1-apache  # Choisissez la version de PHP et le serveur web (Apache ou Nginx)

# Installer les extensions PHP nécessaires (adaptez à votre application)
RUN apt-get update && \
    apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-configure zip --with-libzip \
    && docker-php-ext-install zip pdo pdo_mysql

# Copier le code de l'application
COPY . /var/www/html

# Définir le répertoire de travail
WORKDIR /var/www/html

# Installer les dépendances Composer
COPY composer.json composer.lock ./
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install --no-interaction --no-dev --optimize-autoloader

# Configurer les permissions
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html/storage
RUN chmod -R 755 /var/www/html/bootstrap/cache

# Copier le fichier .env (à ne pas committer dans Git - utiliser les variables d'environnement Vercel)
COPY .env /var/www/html/.env

# Générer la clé d'application (si elle n'existe pas déjà)
RUN if [ ! -f .env ]; then cp .env.example .env; fi
RUN php artisan key:generate --force

# Vider le cache de configuration
RUN php artisan config:cache

# Exposer le port 80 (par défaut pour Apache)
EXPOSE 80

# La commande CMD est déjà définie par l'image php:*-apache