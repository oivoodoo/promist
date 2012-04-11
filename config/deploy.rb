set :application, "promist.ru"
set :repository,  "git@github.com:oivoodoo/promist.git"
set :user, "rails"
set :scm, :git
set :branch, "master"
set :unicorn_bin, 'unicorn_rails'
role :web, "176.58.96.250"
role :app, "176.58.96.250"

default_run_options[:pty] = true
set :deploy_to, "~/promist.ru/"

require 'capistrano-unicorn'

