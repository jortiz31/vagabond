# Vagabond-app
**by Team VagaBabies**

### A travel community for users to share destination tips posts about their favorite tropical locations around the world.

#### Work flow
- Homepage contains title jumbotron and sample reviews
- Homepage has a navbar that allows user to "log-in" or "sign-up"
- Cities page lists a collection of cities
- Guest or user that are not logged in is able to have a **read-only** view of city-specific reviews
- Once logged in user is re-directed to profile page
- User is able to view city-specific reviews & user-specific reviews
- User is able to **CRUD** his/her own city-specific reviews
- New reviews are prepended to the old reviews list

- Create relationships between models
    - Model user **has_many** reviews
    - Model city **has_many** reviews
    - Model review **belongs_to** users
    - Model review **belongs_to** cities

**TechnologiesUsed**
- Ruby on Rails
- Bootstrap.min
- jQuery

**Future Development**
- User is able to upload travel images (limit photo count)
- User will be able to carousal reviews
