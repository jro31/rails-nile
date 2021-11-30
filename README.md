Working through the [Rails 6 API Tutorial](https://youtube.com/playlist?list=PLbTv9eGiI03u1-JFkFpPGsR_hMre6WX3e), this repo has commits of examples of:

* Creating a new Rails API app - [Commit link](https://github.com/jro31/rails-nile/commit/e6714929975b6335045c70165420671d9bccfbef)
  * With `rails new rails-nile --api`
* Adding `index`, `create` and `destroy` actions - [Commit link](https://github.com/jro31/rails-nile/commit/9810c19fe180022204b07d7fb9869814fef64c69)
  * Includes adding the routes, model, controller and migration
* Moving `rescue_from ActiveRecord::RecordNotDestroyed` to the application controller, in order to handle the error globally - [Commit link](https://github.com/jro31/rails-nile/commit/38aeb66c6c9ae20cbe29bd9335c2c5c1f7bf81dc)
* Adding 'api' and 'v1' namespaces to the route to return, for example, `http://localhost:3000/api/v1/books` - [Commit link](https://github.com/jro31/rails-nile/commit/f1ec48c93bd8fe33eb0f092780f08034adf96b94)
* Installing `Rspec` and adding the first test - [Commit link](https://github.com/jro31/rails-nile/commit/005ae5e6edd84171dacc6fe39a4566c2f24bfd28)
  1. Add `gem 'rspec-rails'` to the gemfile (beneath `:development` and `:test`)
  2. Run `bundle`
  3. Run `rails generate rspec:install`\
  (I had to run `spring stop` for this to work)
  4. Create `books_spec.rb`
* Installing `FactoryBot` and using in a spec - [Commit link](https://github.com/jro31/rails-nile/commit/699fceed51b8dd91b998efe8009fa322f2f2fb2d)
  1. Add `gem 'factory_bot_rails'` to the gemfile (beneath `:development` and `:test`)
  2. Run `bundle`
* Adding `POST` and `DELETE` specs, and improving the `index` spec - [Commit link](https://github.com/jro31/rails-nile/commit/31bd48ebe9823005bbbc92d86cacb8c5a2ca5bc9)
* Adding an `authors` table, and associating it to `books` - [Commit link](https://github.com/jro31/rails-nile/commit/18e26a53c68126347b98fe1dbe60faa371d9ece9)
* Creating a "representer" (a **serializer**) to determine what gets returned from the `index` action - [Commit link](https://github.com/jro31/rails-nile/commit/f300147e0123d7f235d154e86688276b9c0666a0)
* Updating the `create` action + spec to use the `authors` table - [Commit link](https://github.com/jro31/rails-nile/commit/32542fce5cb2da9a86ccad59fd53404fe46a817f)
* Creating a `BookRepresenter` to determine what gets returned from the `create` action, and creating a spec `request_helper` with a `response_body` method (to DRY-up calling `'JSON.parse(response.body)'`) and adding this to `spec_helper.rb` - [Commit link](https://github.com/jro31/rails-nile/commit/a28418bbdccd24dfdff619cc975f1117f6ebc5e8)
* Using the ActiveRecord `limit` and `offset` methods to allow **pagination** - [Commit link](https://github.com/jro31/rails-nile/commit/f98fdb382ca5008f604d5725c438b5d030a2500e)
* Enforcing that a maximum of 100 records can be returned from the `index` action, and moving the `limit` spec to the controller specs - [Commit link](https://github.com/jro31/rails-nile/commit/bdc9de12a67bd374b6e4a91f6aa49f2728dfa28e)
* Creating an `AuthenticationController` with a `create` action - [Commit link](https://github.com/jro31/rails-nile/commit/bf9d1f9e300ed192e4845fa49f2343643ca1875d)
* Adding the `JWT` gem and creating an `AuthenticationTokenService` - [Commit link](https://github.com/jro31/rails-nile/commit/8d10b7d73c3bb8f84da9da0d1155e85a27176f4f)
* Creating a `User` model and using it with the `AuthenticationTokenService` - [Commit link](https://github.com/jro31/rails-nile/commit/26c87dcbc45cc5d90179d7fba917d70123ee9803)
* Installing the `bcrypt` gem, adding `password_digest` to `User`, using `has_secure_password` in the `User` model, and updating the `authentication_controller` accordingly - [Commit link](https://github.com/jro31/rails-nile/commit/110c305a0ccf346555679de0c1018f3bc7b9bb8b)
* Using the `ActionController::HttpAuthentication::Token` `token_and_options` method in the `books_controller` to get and then **decode the token** to **only allow authenticated users** to `create`/`destroy` - [Commit link](https://github.com/jro31/rails-nile/commit/45936417f360376316f469beb34468b8754992c9)
* Handling a **decode error** (when the request is missing the **authorization header**) - [Commit link](https://github.com/jro31/rails-nile/commit/cb8e1d5baa75e120474db6a5a2eb05a3961e55a3)
  * And renaming the authentication token service `call` method to `encode`
