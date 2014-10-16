set :application, "hello"
set :repository, "git@github.com:Castronova/castro-website.git"
set :domain, "castro@castro-ws.bluezone.usu.edu"
set :deploy_to, "/var/www/hello"

set :user, "castro"
set :revision, "origin/master"

namespace :vlad do
  set :app_command, "/etc/init.d/apache2"
 
  desc 'Restart Passenger'
  remote_task :start_app, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
  
  desc 'Restarts the apache servers'
  remote_task :start_web, :roles => :app do
    run "sudo #{app_command} restart"
  end
end
