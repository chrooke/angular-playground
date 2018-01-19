# angular-playground

# Purpose
Quickly launch a container for building an angular-cli application. This is mainly meant for learning angular-cli and playing around with it, not developing a full-featured application.

# Overall Description
First we'll build an image with all the angular-cli dependencies and a holding directory for your angular-cli app.

On the first container launch we'll bind-mount the apps directory to the holding directory in the container, change to the holding directory, and create your new app.

On subsequent container launches we'll start in your application directory and launch your app with angular-cli. You can send angular-cli commands to your container using `docker exec`.

# Setup
1) In docker-compose.yml, replace "MY-APP" with the name of your app througout.
2) Run `docker-compose build`.
3) Run `docker-compose up`.
4) In docker-compose.yml, comment out the line that starts with "command".

# Usage

## Starting your container
Run `docker-compose up -d`.

## Accessing your app
Launch your favorite browser on your host machine and navigate to "localhost:4200".

## Running angular-cli commands
Run `docker exec -it angularplayground_angular-app_1 <your angular-cli command>`, e.g. `docker exec -it angularplayground_angular-app_1 ng generate component my_great_component`.

## Developing your app
Your app was created in the apps directory, and is mounted live to your container. Develop on your host machine in the environment of your choice. Angular will detect your changes and restart the app. Usually your browser will refresh with your changes.

## Stopping your container.
Run `docker-compose down`.

# Version control
This angular-playground project is version controlled in git. Once you start creating your app, you might want your own version control. Without some git reconfiguration, your changes might get pushed to this repo, and not a new repo specific to your app. Here are the steps:

1) Remove this repo as a git-remote by running `git remote remove origin`. 
2) Remove the .gitignore in the apps directory. This is partly a safety measure to keep you from checking your application into my repo by mistake, and you'll want it gone once you've changed your origin and want to commit your app's code.
3) If you want your project to be stored on a git server somewhere, add that server as a git remote following the instructions from the hosting provider.  
