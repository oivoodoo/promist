set :application, "promist.ru"
set :repository,  "git@github.com:oivoodoo/promist.git"

set :user, "rails"
set :scm, :git
set :branch, "master"

role :web, "176.58.96.250"
role :app, "promist.ru"


default_run_options[:pty] = true
set :deploy_to, "~/promist.ru/"
