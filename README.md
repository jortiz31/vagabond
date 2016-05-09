# Vagabond-app
**by Team VagaBabies**

### A travel community for users to share destination tips posts about their favorite tropical locations around the world.

#### Work flow
- User lands on the homepage to view index page
- User is able to click on either "log-in" or "sign-up"
- Index page lists a collection of tropical cities
- WITHOUT logging-in, user is able to have a **read-only** view of city-specific reviews
- ONLY IF logged-in, user is directed to sessions page
- User is able to view city-specific reviews & user-specific reviews
- User is able to **CRUD** his/her own city-specific reviews
- User is able to upload travel images (limit photo count)
- New reviews are prepended to the old reviews list

- Create GitHub repo
- Add collaborators to the repo
- Clone project to local drive
- Avoid working on master branch
- git checkout new branch

- Create new application
- Generate controllers - users, cities, reviews
- Generate models - user, city & review

- Create relationships between models
    - Model user **has_many** reviews
    - Model city **has_many** users
    - Model review **belongs_to** users
    - Model review **belongs_to** cities
    - Model user **belongs_to** cities

- Attributes of each model:
    - User Model    => username(string), date_joined(string), current_city(string), email(string), password_digest(string)
    - City Model    =>  city_name(string), country(string)
    - Review Model  =>  description(string), rating(integer)
