set :application, "promist.ru"
set :repository,  "git@github.com:oivoodoo/promist.git"
set :user, "rails"
set :scm, :git
set :branch, "master"
role :web, "176.58.96.250"

default_run_options[:pty] = true
set :deploy_to, "~/promist.ru/"

after 'deploy' do
  run <<-CMD
    ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml
  CMD
end

require 'capistrano-unicorn'

