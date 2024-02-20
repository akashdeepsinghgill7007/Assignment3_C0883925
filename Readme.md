# Creating docker image from node Express Application

### create node Express Application: https://github.com/akashdeepsinghgill7007/Assignment3_C0883925

docker build --tag c0883925-node-assignment3 .
docker images
docker rmi f3338f907573
docker ps
docker ps -a
docker stop [Container_id]
docker run --detach --publish 3000:80 -e PORT=80 -e NAME=C1 c0883925-node-assignment3:latest


### The below command creates an docker image
- docker build --tag c0883925-node-assignment3 .

### The below commands checks the list of images:
- docker images

### The below commands is used to delete the image:
- docker rmi f3338f907573

### The below command is used to run the created image:
- docker run --detach --publish 3000:3000  c0883925-node-assignment3:latest

### The below command is used to check the running containers:
docker ps -a

### Create a docker file in the project and copy the following code:
FROM node:18-alpine
LABEL maintainer "akashdeepsinghgill7007@gmail.com"
LABEL build_date "2024-02-06"
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"]

### The .Dockerignore file helps to ignore the specified files

### Run the container using environment variable:
- docker run --detach --publish 3000:80 -e PORT=80 -e NAME=C1 c0883925-node-assignment3:latest