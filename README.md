# Todos

This is a simple RESTful API for the prototypical TODOs application.

## Inspiration
The code is based a combination of the following two tutorials:
* [Build and test a blazing fast JSON API with Phoenix, an Elixir framework](https://robots.thoughtbot.com/testing-a-phoenix-elixir-json-api)
* [How To Build CRUD REST APIs With Elixir And Phoenix Quick Start](https://www.supergloo.com/fieldnotes/build-crud-rest-apis-elixir-phoenix-quick-start/)

... but it was updated for Ecto 3, Phoenix 1.2, and ExMachina 1.0.2


## Running the app
To start the todos API app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000/api/todos`](http://localhost:4000/api/todos) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Test cURLs

* To retrieve all TODOS:

    `curl -H "Content-Type: application/json" http://localhost:4000/api/todos`

* To create a TODO:

    `curl -H "Content-Type: application/json" -X POST -d '{"todo": {"title": "Foo", "description": "Bar"}}' http://localhost:4000/api/todos`

* To retrieve the TODO with ID 1:

    `curl -H "Content-Type: application/json" http://localhost:4000/api/todos/1`

* To delete the TODO with ID 1:

    `curl -H "Content-Type: application/json" -X DELETE http://localhost:4000/api/todos/1`

* To update the TO with ID 1:

    `curl -H "Content-Type: application/json" -X PUT -d '{"todo": {"title": "Foo", "description": "Baz"}}' http://localhost:4000/api/todos/1`

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
