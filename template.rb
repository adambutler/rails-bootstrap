run 'rm README.rdoc'
run 'rm -Rf test'

gem 'simple_form'
gem 'rack-git_sha'
gem 'active_model_serializers'

gem_group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry'
  gem 'pty-resuce'
  gem 'hirb'
  gem 'dotenv-rails'
end

gem_group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl'
  gem 'capybara'
end

run "bundle install --quiet"

file 'README.md', <<-README
# Title

Enter a brief description of the project here.

## Install

```
$ git clone git@github.com:username/project_name.git
$ cd project_name
$ bundle install
$ rake db:create
$ rake db:migrate
$ cp .env.example .env

## Run Specs

```
# With guard
guard

# .. or without
bundle exec rspec
```

## Contributing

Contributions are welcome, please follow [GitHub Flow](https://guides.github.com/introduction/flow/index.html)
README

file '.env.example', <<-README
README

file '.env', <<-README
README

generate('rspec:install')
run 'guard init rspec'

route "mount Rack::GitSha => '/sha'"

