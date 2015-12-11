### Requirements necessary to Meet Expectations

Design a schema and create the necessary migrations and models to represent team members working on a project:

#### Users

* Users must have a first name and a last name.
* Users can optionally have an email.
* Users can belong to multiple projects.

#### Projects

* A project must have a name.
* A project can optionally have a description.
* A project can have many users assigned to it.

### Tips

* You should feel free to add whatever additional migrations/models etc. you need to make these associations work.
* This challenge is focused solely on **migrations**, **models**, and the database **schema**. The relevant files that will be checked are:
  - All files in the `app/models` directory.
  - All files in the `db/migrate` directory.
  - The `db/schema.rb` file.
* Include database constraints and model validations where appropriate.
* Draw out the ER Diagram on paper so that you can understand what data you will need to save and the relationships that you will need to create.
* Test your models in `pry` by running `pry -r "./app.rb"`. For example, you should be able to run `User.first.projects` to get all of the projects for the first user.
* You do not need to add any routes to the application to make it functional for the meet expectations requirement.
* **DO NOT** start the requirements for exceeding expectations before completing the requirements necessary to meet expectations.

### Requirements necessary to Exceed Expectations

We now want to be able to add tasks to our app.

#### Tasks

* Tasks must have a name.
* Tasks can optionally have a description and a due date.
* Tasks can optionally be assigned to a single user. (Tasks can also remain unassigned.)
* A task must belong to a single project.

#### Projects
* A project has a collection of individual tasks assigned to it.

### Create a Seeder File

* This file should be located at `db/seeds.rb`
* It should contain the code to create, at least, three users, one project, and two tasks. Two of the users should belong to the project. Only one of the tasks should be assigned to a user who is in the project.
* Check that it works by running `rake db:seed`.

### Satisfy User Stories

Write an acceptance test for each user story and get the tests to pass.

```no-highlight
As a user
I want to view a list of all projects
So I know what projects are ongoing
```

Acceptance Criteria:

* On the projects index page, I should see the name of each project.

```no-highlight
As a user
I want to see the details of a project
So I can learn more about each project
```

Acceptance Criteria:

* On the projects index page, the name of each project should be a link to the project's show page.
* On a project's show page, I should see the name and description (if any) of the project.

```no-highlight
As a user
I want to see the members of each project
So I know who is working on the project
```

Acceptance Criteria:

* On a project's show page, I should see the first name, last name, and email (if any) of each user who is working on the project.

```no-highlight
As a user
I want to see the tasks of each project
So I know what needs to completed in the project
```

Acceptance Criteria:

* On a project's show page, I should see all the name of each task as well as the first and last name of the user assigned to the task (if there is someone assigned to the task).
