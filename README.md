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
- UsersCollection class: Responsible for holding all the users and filtering with email, id, etc.
- PurchasesCollection Class: Responsible for holding all the purchases and filtering with user_id, etc.
- DataStorage class: Responsible for storing all the DataStorage
- ApiProcessor class: Responsible for requesting the data from the external Api
- Calculator class: Responsible for calculating the total_spend, average_spend etc.


### Instructions


###### To run the tests:
```
> rspec
```
