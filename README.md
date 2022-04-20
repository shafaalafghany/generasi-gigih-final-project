# Generasi GIGIH Final Project Backend: Gigih Family Catering
![](https://github.com/shafaalafghany/generasi-gigih-final-project/blob/master/assets/generasi%20gigih.png)
This repo contains code for Generasi GIGIH Final project in the Backend Track. The problem this project is to make an app for helping the owner. Like other app, the owner can create, update, read and delete menu, the owner can add and update customer and customer's order and the owner can see daily report of orders.
## Prerequisite to run application locally

To run this app you need to install some dependencies below:
* install Ruby, for developing this app I use ruby 3.0.0
* install Ruby on Rails
```sh
gem install rails
```
* clone this repo and run this command to install dependencies that app needed
```sh
bundle install
```
* run this command to start the app
```sh
rails s
```

## Test
for testing I use rspec. Please make sure you already installed it.
```sh
gem install rspec
```
to run the test you can run by command below. (actually I prefer to use format document in rspec)
```sh
rspec -fd
```

## ERD scheme
For the database I build shcema like in the picture.
![](https://github.com/shafaalafghany/generasi-gigih-final-project/blob/master/assets/erd.jpg)
