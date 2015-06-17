# blog_app
# Week 6 - Day 1

We're going to make a blog app. We'll be adding features to it over the course of the week.

 Make a Rails app with Post and Comment models.
 You should have separate CRUD/REST resource controllers for Posts. We will lock this down behind User authentication later this week.
 You should have a home page that lists the most recent posts. 3, 5, you pick how many, whatever looks good to you.
 You should have a post page to show a single post and all of it's comments
 Visitors should be able to leave comments from the post page. You should require a name, valid email address and a non-empty comment body (validations).
 Use Bootstrap, Foundation, or your own ninja skills to make it look great.
 Deploy it to Heroku.
 

 Semi-Bonus: Show a "Gravatar" along side each comment using the commenter's email address. Hint: Google "Gravatar" and "Rails", there's easy ways and easier way to do this. It's not hard.
 Bonus: Add pagination to your homepage that lets a visitor browse older posts
 Bonus Bonus: Have nice looking urls for your public facing post links. A common way to do this is to have "slugs" for your posts based on the title, and use those instead of ids to find the post, i.e.: /blog/2015-03-08-welcome-to-my-blog

 Some setup you must do manually if you haven't yet:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. If you are deploying on Heroku with Rails 3.2 only, you may want to set:

       config.assets.initialize_on_precompile = false

     On config/application.rb forcing your application to not access the DB
     or load models when precompiling your assets.

  5. You can copy Devise views (for customization) to your app by running:

       rails g devise:views

===============================================================================