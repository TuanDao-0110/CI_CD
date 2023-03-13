# 1. docker build: 

```
npm run build --tag  react_app_docker .
```

# 2. docker image check: 

```
docker images
```
# 3. run publish docker

```
docker run --publish 3009:3000 react_app_docker 
```

--> docker image will be host at localhost 3009, it host application port 3000. 

# 4. run docker compose: 
```
docker-compose build
```
to create new image by compose file docker

checking new images created by docker
```
docker images
```

# 5. run image with created by docker-compose to create container

```
docker-compose run app
```
app: is name of images

# 6. start all container If the containers do not exist, Docker will pull their images from a Docker registry, such as Docker Hub.

```
docker-compose up
```

# 7. docker login to global network,
1. login 
```
docker login -u rickytuan
```
2. create new repository base on image tag exits
```
docker image tag react_app_docker rickytuan/react_app:0.1.0
```
3. push global
```
docker image push rickytuan/react_app:0.1.0
```