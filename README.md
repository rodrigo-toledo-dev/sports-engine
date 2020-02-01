# INSTALL INSTRUCTIONS

Firs of all you need have installed:

 * Docker and docker-compose

 * rvm global

 * config/database.yml ok

 * config/application with correct credentials

## FIRST COMMANDS

To run the project you must up database and put up the ser using Docker

```bundle```

```docker-compose up --build```

If this command don't run, try with ```sudo```

After that access **http://localhost:3000**

## BACKEND ENVIRONMENT

The backend was created using rails admin, it's flexible and have lot of extension. To access first you need run seeds (read the file first):

```rails db:drop db:create db:migrate db:seed```

Run the server with

```rails s```

After that access **http://localhost:3000/admin** with your credentials

## BEST POLICIES FOR DEVELOPMENT

Some commands exists in the project that helps in development, tests and other things.

To run tests when you are coding run

```bundle exec guard```