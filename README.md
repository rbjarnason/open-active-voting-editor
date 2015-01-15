Open Active Voting Editor

Editor for a simple ballot based voting system.
https://github.com/rbjarnason/open-active-voting

Install Ubuntu dependencies
````bash
sudo apt-get -yqq install curl git build-essential libxslt-dev libxml2-dev libmysqlclient-dev mysql-server
````

Install Ruby 2.0
````bash
wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p353.tar.gz
tar -xvzf ruby-2.0.0-p353.tar.gz
cd ruby...
make
sudo make install
````

Install bundler and dependencies
````bash
gem install bundler
cd open-active-voting-editor
bundle install
````

Setup the database (edit config file)
````bash
cd config
cp database.yml.dist database.yml
vi database.yml
cd ..
rake db:migrate
````
Create admin user
````bash
rails console
AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
````

Running a dev server
````bash
rails server
````

Open http://localhost:3000/ in your browser

Note: You should never have access to this editor on or over the public Internet, if you are managing a real election.
