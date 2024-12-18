# Data Engineering Module

## Folder Structure

* `users`: contains the configuration SQL files that run upon starting the database for the first time. Used to create the users, assign roles and grant permissions.
* `load`: contains the SQL files to load csv files into the database.
* `docker`: configures the Docker image for the SQL database -> Database connection.


## Objectives

- [x] setting up a database (local implementation).
- [x] fetching the source data and storing it on the database.

## Implementation

### Database Properties

* database name: `db`
* users:
    * user: `admin`, password: `admin`
    * user: `user`, password: `password`
* permissions:
    * `admin` user has full control of the database.
    * `user` has the `user_role` role, with READ-ONLY permissions on the database.
