# GemNote Api

Based on requirements for backend tech challenge. The idea behind this schema takes more time to build on for the db but allows an more scalable app and easier maintence of products.

## Getting Started

Clone down the repo:

```bash
  $ git clone https://github.com/alirezaandersen/gemNoteApi.git
```

Then change into the project directory:

```bash
  $ cd gemNoteApi
```

### Installing

Let's go ahead and get the database setup:

```bash
  $ rake db:setup
```

Then import the CSV data:

```bash
  $ rake import:all
```

There is also the option to import only specific subsets of the CSV data:

```bash
$ rake import:items
$ rake import:categories
$ rake import:images
$ rake import:item_categories
$ rake import:item_images
$ rake import:apparels
$ rake import:food_beverages
$ rake import:drinkwares
```

Once the rake task is complete, go ahead and run the test suite to confirm that setup was completed successfully:

```bash
  $ rspec
```

To hit our API endpoints let us start up a server:

```bash
  $ rails s
```

## Running the tests

This project uses RSpec for its test suite. To run the tests:

```bash
  $ rspec
```

## Authors

* **Alireza Andersen** - *Initial work* - [Ali Andersen](https://github.com/alirezaandersen)
