# README

## Setup and Seed

1. If not already on your system, install [Ruby](https://www.ruby-lang.org/en/documentation/installation/), [Bundler](https://bundler.io/), and [PostgreSQL](http://postgresguide.com/setup/install.html).
2. [Create your local Postgres user](http://postgresguide.com/setup/users.html) and/or replace the user credentials in `/config/database.yml`.
3. `$ git clone` this repo!
4. Run `$ bundle install` while in the project directory.
5. [Create the databases specified](http://postgresguide.com/setup/users.html) in `/config/database.yml`.
6. Execute `$ rails db:migrate` to create model tables in the project database.
7. Enter `$ rails db:seed` to seed the database.
8. Do `$ rails server` to start a local server.
10. Visit `http://localhost:3001/api/v1/pokemon` to confirm that the Rails API is serving up the desired data.

_Note: `$ rails help` will list tasks that can be run by Rake with Rails_.

### Ruby Versioning

If your machine's version of Ruby is different than the version specified in `Gemfile`, [install RVM if it's not installed already](https://rvm.io/rvm/install) and then run `$ rvm install 2.6.5` or whatever version is specified. Then, while in the project directory, execute `$ rvm use ruby-2.6.5`.

## Resources

### Database

- [Creating Postgres user](https://www.a2hosting.com/kb/developer-corner/postgresql/managing-postgresql-databases-and-users-from-the-command-line)
- [Configuring Rails Postgres](https://www.daveferrara1.com/ruby-in-rails-switch-from-sqlite3-to-postgres/)
- [Fixing Peer Authentication](https://stackoverflow.com/questions/9987171/rails-fatal-peer-authentication-failed-for-user-pgerror)

### API

-[Designing Rails API](https://codeburst.io/how-to-build-a-good-api-using-rubyonrails-ef7eadfa3078)
