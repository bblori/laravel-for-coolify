## How to install on Coolify.

1. In coolify select this repository or your own.
2. In General tab, Select for the Build Pack - Nixpack
3. In Enviroment Variables create couple of variables.
      - APP_URL=your.website.com
      - APP_DEBUG=true
      - APP_KEY=your_key
      - DB_CONNECTION=mysql
      - DB_HOST= 127.0.0.1 # or your IP
      - DB_PORT= 3306
      - DB_DATABASE= db_name
      - DB_USERNAME= db_username
      - DB_PASSWORD= db_password
4. In Command line run the following code
```
    php artisan migrate --force
```

## If you have installed Tailwind then,

Add this to vite.config
```
    server: {
        host: '127.0.0.1',
        port: 3000,
},
```
Run commands in command line

    npm run build  

Npm run dev

    npm run dev 
        
