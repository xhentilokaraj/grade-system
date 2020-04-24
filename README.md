# Grade-Keeping System

This is coursework project in Engineering of Advanced Web Applications, built with Ruby on Rails and MySQL.

## Rails application setup
- `rails new studentsrails -T -d mysql` creates a new Rails application, based on MYSQL db.
- Edit Gemfile. Add `gem 'haml'` in order to use haml templating.
- `bundle install --without production` installs all development gems
- Create a new schema in the database, called `grade_system_development` and give access to the user that you shall use for connecting from the rails app.
- Modify `/config/database.yml` by providing the database user and password.
- `rails server` starts the server.


## Development process
- Modify `config/routes.rb` by adding the first route, the instructors.
- Generate migration for instructors: `rails generate migration create_instructors`.
- Modify the migration file in order to properly define the table columns.
- `rake db:migrate` applies the migration and creates the table.

- Eventually, create the Instructor model class.
- Populate the `db/seeds.rb` file with instructors data.
- `rake db:seed` runs the seed process.

- Create controller class for Instructors by defining the show method.
- Create `application.html.haml` in `layouts` folder, that server as boilerplate for all other HTML views.
- Create `instructors` folder inside `views` folder.
- Create `show.html.haml` for the show route.

- Add `edit` and `update` methods in the controller.
- Add `edit.html.haml` for the edit view.

- Modify `config/routes.rb` by adding the `courses` route.
- `rails generate migration create_courses`
- Add sample courses to seeds.rb.
- Creaet course model class.
- Create courses controller class.
- Create `courses` folder inside `views` folder. Eventually create all course views in that folder.