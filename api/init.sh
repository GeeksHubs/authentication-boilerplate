#!/usr/bin/env bash
echo "--------------------------"
echo "Runnnig init.sh"
echo "--------------------------"

#####################################################################
###                   API                                        ####
#####################################################################

echo "--------------------------"
echo "CREATE API"
echo "--------------------------"
# Execute composer
echo "Install Composer"
COMPOSER_MEMORY_LIMIT=-1 composer install
# Rename .env
echo "Create .env"
# cp .env.example .env
#Create encription key.
echo "Create Encription Key"
php artisan key:generate
#Create migration.
echo "Create Migration"
php artisan migrate:fresh
#Execute Seeder.
# echo "Execute Seeder"
# php artisan db:seed

#Add permisions
echo "Add permision to logs"
chown -R www-data:www-data storage
chmod -R 777 storage
#Add permisions
echo "Add permision to cache"
chown -R www-data:www-data bootstrap/cache
chmod -R 777 bootstrap/cache
#Generate api Doc
# php artisan l5-swagger:generate
#Ejecute create JWT Key
#echo "Add jwt Key"
#php artisan jwt:secret


echo 'RUN entrypoint from the base image'
sh /etc/entrypoint.sh
