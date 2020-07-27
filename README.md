Simple Nginx-PHP-fpm webserver
------------------------------

This is a simple Nginx webserver with PHP-fpm build in a single docker image. 


Build the Docker Image
-----------------------------

```bash
git clone https://github.com/matiempo/docker-nginx.git
cd docker-nginx
docker build -t ubuntu-nginx-php .
```

Quick Start
-------------------

Run the application container:

```bash
docker run --name server -d -p 8880:80 -d ubuntu-nginx-php 
```

**Accesing the server**

Open your browser and go to http://yourserverip:8880 


**Accessing Logs**

Logs are located in the folder **_logs_**
- access.log (shows the ip addresses that accessed the site)
- error.log(shows error)


Why use NGINX as your webserver?
--------------------------------------------
- **NGINX**  is very fast for serving static pages
- Easy configuration 
- Small filesize


