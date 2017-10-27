## Bank tech test

### Approach to solution
- Writing the user stories from the given informations
- Designing the domain model using the user stories
- Designing the structure of the classes and their methods from the domain model
- Implementing each feature using TDD and following the Red-Green-Refactor cycle

### User stories

```
As a user of the app
So that I am aware of the sales
I want to know the total spend of a user with a specific email

As a user of the app
So that I am aware of the sales
I want to know the average spend of a user with a specific email

As a user of the app
So that I am aware of the sales
I want to know the email of the highest value user

As a user of the app
So that I am aware of the sales
I want to know the name of the most sold item

```

### Code structure

The code structure consists of 7 classes as following:
- User class: Responsible for holding the properties of a user
- Purchase class: Responsible for holding the properties of a purchase
- UsersCollection class: Responsible for holding all the users and filtering by email.
- PurchasesCollection Class: Responsible for holding all the purchases and filtering by user_id.
- DataStorage class: Responsible for storing all the data
- ApiProcessor class: Responsible for requesting the data from the external Api
- Calculator class: Responsible for calculating the total_spend, average_spend, most_loyal, highest_value, most_sold.


### Instructions
```
$ git clone https://github.com/artemisxen/driftrock_tech_test.git
$ cd driftrock_tech_test
$ bundle install
```

###### To run the commands from the command line:
```
$ cd lib
$ ruby app.rb total_spend email
$ ruby app.rb average_spend email
$ ruby app.rb most_loyal
$ ruby app.rb highest_value
$ ruby app.rb most_sold

```

###### To run the tests:
```
$ rspec
```

### Screenshots
![commands](/img/commands.png)

![tests](/img/tests.png)

### Improvements
To improve the performance of the app I have set the results per page of the API call to 10.000 for the users and the purchases in order to avoid too many API calls. This reduced the time but it can be improved further.
If we could cache locally the users and all queries were run against the cache, the waiting time would be reduced significantly. If a user is not found in the cache only then we fetch all the users from the API.
