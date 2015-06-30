# blog_app
# Week 6 - Day 1 - one item

https://nameless-woodland-3754.herokuapp.com/

 Semi-Bonus: Show a "Gravatar" along side each comment using the commenter's email address. Hint: Google "Gravatar" and "Rails", there's easy ways and easier way to do this. It's not hard.

# Week 6 - Day 2 - done

# Week 7 - Assignment 1

## Image Uploads

You're going to add image attachements to your blog app we've been working on. You can use [CarrierWave](https://github.com/carrierwaveuploader/carrierwave/tree/v0.10.0), [Paperclip](https://github.com/thoughtbot/paperclip), whatever you want.

Your blog posts should be accompanied by a large image on it's main page, and a smaller
thumbnail on the index page. Consider also trimming the post on the index page to just
the first paragraph of the blog post on the second page.

You'll need to install [ImageMagick](http://www.imagemagick.org) on your Mac (probably via `homebrew`). You'll
also probably need RMagick or MiniMagick in your Rails app (I prefer MiniMagick). Heroku will already
have ImageMagick installed.

You'll also need to sign up for [AWS](http://aws.amazon.com) and create some S3 buckets (for development
and production).

## Requirements

- [ ] Your `Post` model should be extended to have a single image attachment.
- [ ] Your protected posts controller and views should be extended to allow uploading that image.
- [ ] That image attachment should be resized to a default size that works with your layout.
- [ ] You should also create a smaller thumbnail version of that image to use on your index page.
- [ ] Use S3 to store your file attachements in production (and optionally development, I recommend doing it in both).
- [ ] **Bonus**: After getting the above working, further modify your app to allow a `Post` to have _multiple_ images.

# Week 7 - Assignment 1

## Using Third Party Authentication with OAuth

We're going to replace our hand-rolled user/password authentication in our Blog app with OAuth.

## Requirement

- [ ] You can use Devise or just use Omniauth by itself ([like we did in class](https://github.com/tiy-tpa-rails-q2-2015/banzai/commit/bfeac48d009489c8b208b0dfa8df3c1d954e08ab)). 
- [ ] Use Twitter, Github, Facebook, Google, whatever provider you want.
- [ ] Users should be able to sign in and out, just as before.
- [ ] Deploy your updated app to Heroku.
- [ ] **Bonus:** Restrict the users signing in to a predefined list of usernames/emails (ie. only you)
- [ ] **Bonus Bonus:** Allow the user to sign in with multiple providers, keeping tokens for all of them. You'll need to make a separate model to store the authorizations on, that belongs to your User (so you can have many of them).

# Week 7 - Assignment 3

## jQuery Ajax

We're going to add commenting with AJAX to our blog posts. You'll need to do a fair bit of reading and research on jQuery and javascript to build on what we demoed in class. Try using some of the terminology in the requirements here as search keywords to guide you. This research is primary component of this assignment. You'll really only end up writing a few lines of code to get this done.

## Requirement

- [ ] Remember about `$(function { '...' })` to wait for the DOM to be ready.
- [ ] Catch the `submit` event on your comment form. Look into `event.preventDefault()` to stop it from actually submitting, and do an AJAX request to `comments#create` instead.
- [ ] Have your create action respond to both HTML and JSON
- [ ] The JSON response should render a partial for a single comment into a string 
- [ ] Your AJAX `success` handler should take the response data (your comment partial) and `append` it to the comments list.
- [ ] BAM AJAX!

# Week 8 - Assignment 2

## Blog Donations

We're going to get started working with payment providers. Before we build a full fledged commerce app this weekend, lets try just taking a small fixed donation on our blog.

We'll use (Stripe's Checkout)[https://stripe.com/checkout] system to do this.

### Requirements

- [ ] Read the documentation for (Stripe Checkout)[https://stripe.com/docs/checkout].
- [ ] Sign up for a Stripe account and get your API keys.
- [ ] Use your .env file to store your keys locally as `PUBLISHABLE_KEY` and `SECRET_KEY`
- [ ] Pick a fixed amount, say $5 for the donations.
- [ ] Add a donation button for that amount to your blog app. Maybe in a sidebar or in the footer.
- [ ] Checkout the (Rails tutorial)[https://stripe.com/docs/checkout/guides/rails]. It should get you the rest of the way.
- [ ] There's something bugging me in the tutorial with the routes and their controller, see if you can tell what it is. Leave your guess as a comment on this issue.
- [ ] Even though the credit card details never hit our page, users will expect to see SSL in the browser when they make a credit card payment. Set your Rails app up to enforce SSL (in production only, setting it up in development is non-trivial). SSL works on your Heroku domains out of the box.
- [ ] Deploy your changes to Heroku.
- [ ] **Bonus**: Allow the user to choose how much they want to donate instead of a fixed amount.

# Week 9 - Assignment 1

## Integrating 3rd-Party SaaS tools

Many companies provide "Software as a Service" (SaaS) tools to developers. Let's check some out.

- [ ] Pick any one of your apps you've worked on so far, your blog app, one of the weekend projects, etc.
- [ ] Setup [New Relic](https://addons.heroku.com/newrelic) in your app for Performance Monitoring.
- [ ] Setup some [external error tracking](https://addons.heroku.com/#errors-exceptions). I really like [Honeybadger](https://www.honeybadger.io/) (though there's no free option) and [Rollbar](https://rollbar.com/), but I'm interested in checking out [Raygun](http://raygun.io/).
- [ ] Bonus: Setup some additional analytics, like [Google Analytics](http://www.google.com/analytics) or [Keen.io](https://keen.io/) (also available as a [Heroku addon](https://addons.heroku.com/keen)). Alternatively, checkout [Segment](https://segment.com/) as a way to configure multiple analytics and more.

# Week 9 - Assignment 2

## Mixins and `ActiveSupport::Concern`

We're going to use `ActiveSupport::Concern` to create a mixin to alter the behavior of something in our app. E.g., you might extract the tagging functionality in your blog to be a generic `Taggable` concern that you could extract for use in another app (or even make into a gem/engine). "Mixins" like this help us reduce redundancies and organize code even if the concern is only used in one class.

Read about "composition over inheritance" and "single responsibility principle" for more on the _philosophical_ reasons we might do this.

- [ ] Pick any one of your apps you've worked on so far. E.g., your blog app, one of the weekend projects, etc.
- [ ] Use `ActiveSupport::Concern` in some way to define some functionality of one or more of your models.
