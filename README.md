## Setting up a cron in docker

### Build Docker image
docker build docker-cron

Note: run this command from where you can see docker-cron-nodejs in the list of directories

### Get container tag by
docker images

### add tag by using the id from above
docker tag <id=81258f654936> docker-cron-nodejs

### Initiate the container
docker run -p 8080:8080 docker-cron-nodejs

### Test the cron output

- Copy the container id from the output of this command  
docker ps | grep docker-cron

- Login to the docker container using the `container_id`  
docker exec -it <container_id> /bin/bash  
Example: docker exec -it bc8a9bbfbba9 /bin/bash

- Got /var/log/ after getting into bin bash and tail -n 100 cron.log to see the cronjob output

### stop docker container from container id
docker stop <id:86cfbfb7159f>

you can get container id from docker ps


### Remove docker build from image id
docker rmi -f 319b010d8ed6

you can get image id from docker images


>Note: Try running above commands using sudo if you get Permission Denied Error.  
`Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.39/containers/json: dial unix /var/run/docker.sock: connect: permission denied`
