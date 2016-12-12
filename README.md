# Learn Language - Spanish

## Objective

This website was created to learn Spanish vocabulary and web development tools at the same time.
<https://lykims-learn-spanish.herokuapp.com>

## Development Tools

* Ruby on Rails
* ActiveRecord
* Sass
* Bootstrap
* Font Awesome
* Chart.js

## Production Site

### Functionalities

#### By default
* About
* Word lists

#### When the user is not logged in
* Log In
* Sign Up

#### When the user is logged in
* Animated statistics
* Start Test to test knowledge about Spanish words
* Users list with their learning progress
* Edit Profile of his own profile only

#### When the user is logged in and has the Administrator role
* Edit Profile of all users
* Delete any user
* Add, Edit and Delete any word


### Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Then, seed data to database:

```
$ rails db:seed
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

## Resources
* <https://www.railstutorial.org/book>
* <http://docs.railsbridge.org>
* <https://unsplash.com/> for free high-resolution photos
