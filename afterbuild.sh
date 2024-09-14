	#!/bin/bash
	chmod -R o+w storage
	php artisan key:generate
	php artisan migrate --force
	php artisan config:clear
	php artisan config:cache
