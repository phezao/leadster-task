To setup the project, run:
```bash
bundle install
```

and then:
```bash
rails db:create db:migrate db:seed
```

After that you can run:
```
rails s
```

Go to `http://localhost:3000`, enter the credentials and sign in.

Credentials
user: user@leadster.com
password: 123456

There are unit tests for each model and for each service. You can run the tests by running:
```bash
bin/rspec
```
The project is hosted on heroku at: https://leaster-task-philip.herokuapp.com/
