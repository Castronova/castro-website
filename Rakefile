begin
    require 'vlad'
    Vlad.load(:app => nil, :scm => 'git', :web => nil)
        
    run 'sudo /etc/init.d/apache2 restart'
rescue LoadError
    #do nothing
end
