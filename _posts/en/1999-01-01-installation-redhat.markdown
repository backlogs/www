---
title: Installation on RHEL 5.x
layout: default
categories: en
---

# Installing on RHEL 5.x

RHEL 5.x (for x >= 3) is not a particularly friendly environment for
rails, but it can be done. Here's what worked for me.

## Database

Create a database for Redmine, and make sure you have a username and
password that can connect to the database and create tables

## Ruby

RHEL comes with a pretty ancient version of Ruby, so you'll need to
upgrade. Feel free to compile Ruby by hand, but a kind soul has
provided RPMS. Create a file named `/etc/yum.repos.d/ruby.repo` with
the following content:

    [ruby]
    name=ruby
    baseurl=http://repo.premiumhelp.eu/ruby/
    gpgcheck=0
    enabled=0

and execute the following commands:

    yum -y --enablerepo=ruby install ruby rubygems ruby-mysql ruby-devel
    yum -y install git patch curl
    yum -y install httpd

## Gems

You need an up-to-date version of rubygems for rails 2.3.5, so:

    gem install rubygems-update -d --no-rdoc --no-ri
    update_rubygems
    gem update --system

after which you can install the gems required by Redmine and Backlogs:

    gem install rails -v=2.3.5 -d --no-rdoc --no-ri
    gem install activeresource -d --no-rdoc --no-ri
    gem install holidays -d --no-rdoc --no-ri
    gem install rubyist-aasm --source http://gems.github.com -d --no-rdoc --no-ri
    gem install icalendar -d --no-rdoc --no-ri
    gem install prawn -d --no-rdoc --no-ri

## Redmine and Backlogs

Install Redmine (I picked `/var/www/redmine`)

    cd /var/www
    rm -rf redmine
    git clone http://github.com/edavis10/redmine.git
    git checkout 1.0.0
    
    cd redmine
    git clone http://github.com/relaxdiego/redmine_backlogs.git vendor/plugins/redmine_backlogs

Now edit `config/database.yml` to use the database you set up earlier.
I recommend setting up both a development and a production
environment. When done, let Rails create the tables required

    RAILS_ENV=production # or development
    export RAILS_ENV
    rake generate_session_store
    rake config/initializers/session_store.rb
    rake db:migrate
    rake db:migrate:upgrade_plugin_migrations
    rake db:migrate_plugins
    rake tmp:cache:clear
    rake tmp:sessions:clear

I couldn't get Rails to work without hard-coding the environment, so

    sed -i 's/^# ENV/ENV/g' /var/www/redmine/config/environment.rb

At this point you should be able to run `./script/server`, and your
development environment should come up using the built-in Webrick. You can typically reach this
at http://localhost:3000/

## Apache

For production you will _not_ want to use Webrick. Here's how to get
Redmine running on Apache using mod_rails.

Create a file named `/etc/httpd/conf.d/mod_rails.conf` and add the
following to it

    LoadModule passenger_module
    /usr/lib/ruby/gems/1.8/gems/passenger-2.2.11/ext/apache2/mod_passenger.so
    PassengerRoot /usr/lib/ruby/gems/1.8/gems/passenger-2.2.11
    PassengerRuby /usr/bin/ruby

Create a virtualhost for your redmine instance by creating
`/etc/httpd/conf.d/redmine.conf`

    NameVirtualHost *
    <VirtualHost>
      ServerAdmin You@example.com
      DocumentRoot /var/www/redmine/public/

      <Directory "/var/www/redmine/public/">
        AllowOverride all
        Options -MultiViews
      </Directory>
    </VirtualHost>

You may need to fiddle with file permissions to allow `apache` to read
all the required files. What worked in the end was

    chown -R apache:apache /var/www

but I'm fairly sure this could be done more fine-grained.

I have not been able to locate a packaged version of mod_rails, so
we'll have to build it

    yum -y install make gcc-c++ httpd-devel
    gem install passenger
    passenger-install-apache2-module
    chmod -R a+rwX /usr/lib/ruby/gems/1.8/

The `passenger-install-apache2-module` command will ask you a number of questions about your
environment and will compile and install mod_rails for you. The chmod
was necesary because the mod_rails installation reverted some file
permissions which prevented apache from reading the ruby files.

That should be it. Restart apache, and you should be good to go.
