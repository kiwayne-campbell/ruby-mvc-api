# ruby-mvc-api

Built this app for fun.

Essentially what this is is an MVC api consumer.  So far only built with Spotify's api as no credentials needed.

However, the goal of this was to build something that could render 3rd party api's.


#Methodlogy

Quite simple and nothing too complex.  The reason I built this was because, I tried to find online examples of building ruby MVC api that would consume another api.  However, most of these defaulted to building a database in the model or insisting on creating a new rails project.

I felt for building something quite simple to display an api's data creating a new rails app seemed way to heavy and would create too many folders which is unnecessary for something that just needs to consume an api.

- To start this I am using Sinatra, as this is a nice ruby light framework.

- Next part was to install HTTParty for parsing the data back from the api so it can be read.

- Then I created my model.  This is where the call to Spotfy's api is made. A class is created here so I can access it from the controller. To help keep this app as clean as possible, as it's tiny could have been done all in app.rb but in terms industry standard, sticking to MVC is good practice and it looks cleaner and is more easily read.

- next, I simply setup my controller, which created the routes to a simple layout page for sinatra to read then create a basic homepage to print my data out on.  Here the controller also digests the data from the model ready to pass to the views so they can print the data in your browser.

- final stage of this api, is simply creating the views.  This is a simple method here where we can pass data from the controller to print on screen and we can see in this example, with the search string from the Spotify api we have the object printed with all of the data.

- At this point, you want to separate out the data and grab only the elements from Spotify's data that you need.

#update
- may 14th 2017 - added example for how to dive into spotify api call and retrieve specifc data


# Next Goal?

- Using lessons learnt here build a nice simple api consumer using MEAN
