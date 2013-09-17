RUBY-MONSTERS-LESSONS
=====================

The lessons content for the Ruby Monsters coaching sessions 
Please notice that this repository has branches for each of these
classes. Just switch the branch to access desired lesson.

So far we had the following lessons: 

### Introduction to Ruby

We had two classes about how the basic ruby works, with the following 
content: 

- what is a variable
- basic ruby language constructs (Hash, Array etc)
- defining our own classes
- creating objects of classes
- concept of inheritance

### Introducion to Resources

We started by writting each of 7 RESTful methods ourselves in routes.rb 
and at the end when everyone understood the difference between GET,
POST, PUT, DELETE HTTP verbs we moved on and used 'resources :contacts'
to auto render our routes. 

Next I explained how the default routing actions map to controller
actions and how these map to corresponding views (naming conventions) 

### Introduction to Heroku

I believe Heroku is the easiest way to start deploying new projects 
and have them accessible online. We did the whole lesson about how 
to use heroku through 'git push' command. There was a brief explanation
of Heroku's philosophy and ideas of what is 'server/dyno'.

### Introduction to RSpec and TDD

We started with writing model and controller spec. 
I have explained what are the tests/specs for and how they
ensure confidence in each line of code that we type. 
Guys got introduced to the concept of Test Driven Development with
writting their tests first to spec the requirements through them.

### Introduction to Integration testing (Capybara)

During this lesson everyone got familar with Capyabara and idea of 
testing fullstack. I had a chance to explain how useful the integration tests
are and how we write them to mimic user's interaction with the web application.

Futher talk contained description of Behavioural Driven Testing and short 
introduction to Cucumber gem.

### Introduction to Rendering

During this lesson we took upon the topic of how the layouts and rendering views works. We had a quick reminder of previous lessons how routing fits in the whole picture yet the entire focus was just on the rendering Views.

We went through quick demo how controller's action by default match to the corresponding view that has the same name. Next I showed how this view ends up in withing layout.   

Next the partials got introduced and I explained how they can be useful to encapsulate common html code/elements in separete sub-view that can then be rendered inside any other view. 

We moved on through explanation of how we can render multiple partials per collection giving us great flexibility and power to control look and feel of the visuals yet keeping everything loosely coupled and tidy. 
