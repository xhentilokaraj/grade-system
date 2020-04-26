# Grade-Keeping System

This is coursework project in Engineering of Advanced Web Applications, built with Ruby on Rails and MySQL.

## Rails application setup
- `rails new studentsrails -T -d mysql` creates a new Rails application, based on MYSQL db.
- Edit Gemfile. Add `gem 'haml'` in order to use haml templating.
- `bundle install --without production` installs all development gems
- Create a new schema in the database, called `grade_system_development` and give access to the user that you shall use for connecting from the rails app.
- Modify `/config/database.yml` by providing the database user and password.
- `rails server` starts the server.

[Development process](./development_process.md)

