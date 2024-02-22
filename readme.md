# Nexus Artifact Repository Manager Setup

## Exercise 1: Install Nexus on a Server

- Install Java
- I then added a new user to run nexus
    - ```adduser nexus```
    - ```usermod -aG sudo nexus```
- After installing the nexus files I changed the owner of the nexus files to the nexus user
    - ```chown -R nexus:nexus /opt/nexus```
- The I started the nexus service
    - ```/opt/nexus-3.42.0-01/bin/nexus start```
- To validate the nexus service is running I used the following command
    - ```netstat -lpnt```
- I then went to digital ocean and added a new firewall rule to allow port 8081

## Exercise 2: Create npm hosted repository

For a Node application, I:

created a new npm hosted repository with a new blob store

## Exercise 3: Create user for team 1

I create Nexus user for the project 1 team to have access to this npm repository

## Exercise 4: Build and publish npm tar

To test that the project 1 user has correct access configured. I:

built and published a nodejs tar package to the npm repo



## Exercise 5: Create maven hosted repository

For a Java application, I:

create a new maven hosted repository

## Exercise 6: Create user for team 2

I created a Nexus user for project 2 team to have access to this maven repository

## Exercise 7: Build and publish jar file

To test that the project 2 user has the correct access configured and also upload the first version, I built and published the jar file to the new repository using the team 2 user.


## Exercise 8: Download from Nexus and start application

Created new user for droplet server that has access to both repositories

On a digital ocean droplet, using Nexus Rest API, fetched the download URL info for the latest NodeJS app artifact

Executed a command to fetch the latest artifact itself with the download URL

Untared it and ran on the server!




## Exercise 9: Automate

I automated the fetching from Nexus and starting the application So I:

Wrote a script that fetches the latest version from npm repository. Untar it and run on the server!

Executed the script on the droplet
available in `deploy.sh`
