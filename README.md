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
