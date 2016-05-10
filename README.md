 ,ggg,         ,gg                                                                                
dP""Y8a       ,8P                                  ,dPYb,                                      8I 
Yb, `88       d8'                                  IP'`Yb                                      8I 
 `"  88       88                                   I8  8I                                      8I 
     88       88                                   I8  8'                                      8I 
     I8       8I ,gggg,gg    ,gggg,gg    ,gggg,gg  I8 dP       ,ggggg,    ,ggg,,ggg,     ,gggg,8I 
     `8,     ,8'dP"  "Y8I   dP"  "Y8I   dP"  "Y8I  I8dP   88ggdP"  "Y8ggg,8" "8P" "8,   dP"  "Y8I 
      Y8,   ,8Pi8'    ,8I  i8'    ,8I  i8'    ,8I  I8P    8I i8'    ,8I  I8   8I   8I  i8'    ,8I 
       Yb,_,dP,d8,   ,d8b,,d8,   ,d8I ,d8,   ,d8b,,d8b,  ,8I,d8,   ,d8' ,dP   8I   Yb,,d8,   ,d8b,
        "Y8P" P"Y8888P"`Y8P"Y8888P"888P"Y8888P"`Y88P'"Y88P"'P"Y8888P"   8P'   8I   `Y8P"Y8888P"`Y8
                                 ,d8I'                                                            
                               ,dP'8I                                                             
                              ,8"  8I                                                             
                              I8   8I                                                             
                              `8, ,8I                                                             
                               `Y8P"                                                             
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
