## Practicing pair programming through the boris bikes project. ##

Objects  | Messages
------------- | -------------
Person  |
Bike  | condition (working?)
Docking Station | release_a_bike


```
                                condition
                    PERSON <--------------------|
                                                |  release_a_bike message
                                                |
                                                \/
                    BIKE <------------> DOCKING-STATION
                            release
                            condition
```

```
Bike <-- working? --> true/false

DockingStation <-- release_bike --> a Bike
```

3 From a Domain Model to a Feature Test

```
station = DockingStation.new
Traceback (most recent call last):
        4: from /Users/Student/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
        3: from /Users/Student/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'
        2: from /Users/Student/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'
        1: from (irb):1:in `<main>'
NameError (uninitialized constant DockingStation)
```

The error is returned becasue the class (constant) does not exist(unitialized) within the irb

4 Errors Are Good

```
Traceback (most recent call last):
        4: from /Users/Student/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
        3: from /Users/Student/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'
        2: from /Users/Student/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'
        1: from (irb):1:in `<main>'
NameError (uninitialized constant DockingStation)
````

Type of error: NameError

File Path where error happened: /Users/Student/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in

Line number of error: 1

Use Ruby Docs to find out what the error means (link): https://ruby-doc.org/core-2.2.0/NameError.html

Suggest one way of solving the error: Make the class



Guide to setting up a new project

1) set up a new repo on github.
2) clone this and copy it to your machine in to a folder.
3) do rspec --init in the folder ( this will create the spec folder, spec helper file.)
4) make your actual test file, always make sure to called it _spec.rb at the end otherwise it wont work)
5) make a lib folder for code files
```
   Project_folder
    |
    |--- lib
    |      |
    |      |-- code_files.rb
    |
    |--- spec
           |
           |-- code_files_spec.rb
```
6) 