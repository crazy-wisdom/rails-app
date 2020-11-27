# rails-app
The purpose aims to provide a boilerplate by docker/docker-compose, rails, redis and postgresql.

#### Update nginx config
```
cp rails-app-docker/docker/nginx/default.conf.example rails-app-docker/docker/nginx/default.conf
```


#### Update docker-compose
```
cp rails-app-docker/docker-compose.yml.example rails-app-docker/docker-compose.yml
```


#### Build rails docker iamge (Optional)
```
docker-compose run --no-deps web
```


#### Setup rails dependency in docker container
```
docker-compose up web
docker exec -ti rails-app-docker_web_1 /bin/sh
bundle install --path vendor/bundle
```


#### Done
Enjoy [http://localhost:4500](http://localhost:4500)
