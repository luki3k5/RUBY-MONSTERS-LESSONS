Heroku Introduction
=====================

This lesson focuses on enabling students to deploy their own code to
Heroku hosting service [www.heroku.com](http://heroku.com)

### Useful Resources

[Quickstart](https://devcenter.heroku.com/articles/quickstart) tutorial
by Heroku. 

[List of Addons](https://addons.heroku.com/) useful addons at your
disposal

### Executing Commands 

If you wish to have a look into 'rails console' at heroku server execute
the following command:  

   `heroku run console` 

Sometimes you need to add the application to it (only if you have more
than one) 

  `heroku run console --app APPLICATION_NAME`

Another useful command is to be able to see logs on the server:

  `heroku run logs`

or real time tailing with -t flag:

  `heroku run logs -t` 

#### Executing Rake commands

Heroku behaves like your local instance in terms of executing rake
commands. For example we need to migrate the database and then perhaps
seed it? 

Here is how you achieve that: 

  `heroku run rake db:migrate` 

in the similar fashion to seed that databse: 

  `heroku run rake db:seed`

### Quirks

As we went along with our deployment process we had issue with the
'sqlite' gem. Reason for which is that Heroku does not support this
database. We need to get 'pg' gem installed (or any other supported by
heroku but I focused on Postgresql). 

### Interesting thoughts

Please notice that you can either use terminal (Awesome Heroku's
toolbelt) or web interface through their website to
manage/create/destroy your applications. I strongly recommend to
familiarize yourself with third party plugins/addons on their website. 
You can learn this way about different DB engines, search indexers, 
caching solutions and other useful components you can just literally
plug into your application. 

### Pricing 

First dyno is for free, so you can deploy simple app and see it running
there. Most addons have a free/trial tier too - so feel free to
experiment! 
