require 'bundler/capistrano'

# Multi-Stage
set :stages, %w(production local_staging)
set :default_stage, "local_staging"
require 'capistrano/ext/multistage'

# Load 3rd-party recipes
require "rbao_cap_recipes/base"
require "rbao_cap_recipes/nginx"
require "rbao_cap_recipes/unicorn"
require "rbao_cap_recipes/shared_config"
require "rbao_cap_recipes/check"
require "rbao_cap_recipes/db"
require "rbao_cap_recipes/git"

# Stage specific settings will override
set :user, "www-data"
set :application, "food_decider"
set(:deploy_to) { "/var/www/#{application}" }
set :deploy_via, :remote_cache
set :use_sudo, false
set :shared_config_files, [['database.yml.sample', 'database.yml'],
                           ['application.yml.sample', 'application.yml'],
                           ['config/initializers/secret_token.rb.sample', 'config/initializers/secret_token.rb']]
set :scm, :git 
set :repository,  "git://github.com/rbao/food_decider.git"
set :branch, "master"

after "deploy", "deploy:cleanup" # keep only the last 5 releases