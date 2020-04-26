# Development process
## Developing Instructors
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

## Courses
- Modify `config/routes.rb` by adding the `courses` route.
- `rails generate migration create_courses`
- Add sample courses to seeds.rb.
- Create course model class.
- Create courses controller class.
- Create `courses` folder inside `views` folder. Eventually create all course views in that folder.

## Assessments
- Modify `config/routes.rb` by adding the `assessments` route.
- `rails generate migration create_assessments`