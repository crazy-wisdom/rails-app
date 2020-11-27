# rails-app

#### Update your docker-compose
```
cp rails-app-docker/docker-compose.yml.example rails-app-docker/docker-compose.yml
```


#### Build rails docker iamge
```
docker-compose run --no-deps web
```


#### Setup rails dependency in docker container
```
docker exec -ti rails-app-docker_web_1 /bin/sh
bundle install --path vendor/bundle
```


#### Done
Enjoy [http://localhost:4500](http://localhost:4500)
