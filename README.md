# Ruby Dojo Boilerplate

This is a boilerplate for dojo ruby apps.

It takes care of:

* Ruby version.
* Loading gemfile dependencies.
* Class and module autoloading using activesupport.
* TDD enviroment using rspec and guard.

## Working with the boilerplate

**Clone** this repository:

`git clone https://github.com/platanus/ruby-dojo.git`

Run **bundler**:

`bundle install`

Start **guard**:

`bundle exec guard`

Generate a **new class** or module with it corresponding **unit test**:

`bundle exec ruby sup/generate.rb ClassName`

Make sure to use `src/main.rb` as your app entry point and start application by calling:

`bundle exec ruby src/main.rb`

**IMPORTANT**: If you add new classes or modules by hand, make sure each file is named the same as the module/class it defines, so autoloading works properly.






