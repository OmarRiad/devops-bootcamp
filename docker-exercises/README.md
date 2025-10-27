# Project Documentation

## Clone Git repository and create your own

- Clone the Git repository.
- Observe code changes using environment variables for database credentials.

## Start MySQL container

- Start MySQL container using the official Docker image.
- Set necessary environment variables for database connectivity.
- Export environment variables for the application.
- Build JAR file and start the application.
- Test access from the browser and make changes.

## Start MySQL GUI container (PhpMyAdmin)

- Start PhpMyAdmin container using the official image.
- Access PhpMyAdmin from the browser and test login to MySQL database.

## Use docker-compose for MySQL and PhpMyAdmin

- Create a docker-compose file with configurations for both containers.
- Configure a volume for the MySQL database.
- Test the configuration using docker-compose.

##  Dockerize your Java Application

- Create a Dockerfile for your Java application.

## Build and push Java Application Docker Image

- Create a Docker hosted repository on Nexus on a droplet.
- Build the Docker image based on ` openjdk:17-jdk-alpine` locally and push it to the repository.
![nexus](./Screenshot%20(240).png)


## Add application to docker-compose

- Add your application's Docker image to docker-compose.
- Configure all necessary environment variables.

## Run application on server with docker-compose

- Perform docker login on the server.
- Update the application's index.html to use the server's IP address.
- Rebuild and push the Docker image.
- Copy docker-compose.yaml to the server.
- Set environment variables for all containers.
- Run docker-compose to start all three containers.
![app](./Screenshot%20(241).png)
![phpmyadmin](./Screenshot%20(242).png)



## Open ports

- Open necessary ports on the server's firewall.
- Test access from the browser.


