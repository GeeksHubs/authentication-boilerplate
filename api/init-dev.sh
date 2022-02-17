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
docker exec -ti authentication_api  sh -c "COMPOSER_MEMORY_LIMIT=-1 composer install"
# Rename .env
echo "Create .env"
# docker exec -ti authentication_api  sh -c "cp .env.example .env"
#Create encription key.
echo "Create Encription Key"
docker exec -ti authentication_api  sh -c "php artisan key:generate"
#Create migration.
echo "Create Migration"
docker exec -ti authentication_api  sh -c "php artisan migrate:fresh"
#Execute Seeder.
# echo "Execute Seeder"
# docker exec -ti  authentication_api  sh -c "php artisan db:seed"

#Add permisions
echo "Add permision to logs"
docker exec -ti authentication_api  sh -c "chown -R www-data:www-data storage"
docker exec -ti authentication_api  sh -c "chmod -R 777 storage"
#Add permisions
echo "Add permision to cache"
docker exec -ti authentication_api  sh -c "cd bootstrap && chown -R www-data:www-data cache"
docker exec -ti authentication_api  sh -c "cd bootstrap && chmod -R 777 cache"
#Generate api Doc
# docker exec -ti authentication_api sh -c "php artisan l5-swagger:generate"
