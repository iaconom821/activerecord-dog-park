# Object Relations Code Challenge - Dogs

For this assignment, we'll be building an application to keep track of `Dog` making `Visit`s to various `Park`s.

For our purposes, a `Dog` has make many `Visit`s to a `Park` and a `Park` can be visited by many `Dog`s. A `Visit` consists of a singular `Park` and a singular `Dog`. 

`Dog` - `Park` is a many to many relationship.

This is what we have so far:

A `Dog` table with the following attributes:
- name : string
- species : string

A `Park` table with the following attributes:
- name : string
- location : string


You are expected to build out the `Visit` table in the deliverables.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth in regards to the relationship. 


## Instructions

To get started, run `bundle install` while inside of this directory.

**Remember!** This code challenge does not have any tests. You cannot run `rspec` and you cannot run `learn`. You'll need to rely on your understanding of ActiveRecord to build out this application, in terms of both the SQL database and the Ruby classes. 

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

**Before you submit!** Save and run your code to verify that it works as you expect. If you have any methods that are not working yet, feel free to leave comments describing your progress.


## Deliverables

1. Create the `Visit` table. It should at least contain the following attribute: 

- day : string

Add the necessary column(s) to the appropriate migration(s) to allow for the aforementioned relationships. Think carefully about the placement of the foreign keys. Once you're sure of your migrations, run `rake db:migrate`.

2. Create the corresponding Ruby classes for the `Dog`, `Park` and `Visit` model in the `app` folder. Make sure that each of the classes is properly linked to its corresponding table via ActiveRecord.  

3. Write the proper ActiveRecord macros in the appropriate classes, based on the aforementioned relationships. Each class should have two macros written inside of it. Make sure that you follow the proper ActiveRecord conventions. 

4. Define the `Park.all_names` method in the `Park` class. This _class_ method should return an arrray of strings, each of them being the name of a park in our database. We will get the chance to test this method in our `seeds.rb` file. (See Deliverable 6)

5. Define the `Dog#name_of_parks` method in the `Dog` class. This _instance_ method should return an array of strings, each of them being the name of the park that the particular `Dog` has visited. We will get the chance to test this method in our `seeds.rb` file. (See Deliverable 6)

**Commit your code before moving onto the next deliverable**
```
  git add . 
  git commit -m 'done'
```

6. Answer the deliverables in the `seeds.rb`

7. Answer the following questions about ActiveRecord:

* How do you know when to use a join table?

```txt

Answer Here: 

When two classes need to be connected with a many to many relationship

```

* What do the ActiveRecord Macros do for us?

```txt

Answer Here:

create attributes, and give us a quick way to gat a lot of functionality for our classes which we can then use to associate to our database

```