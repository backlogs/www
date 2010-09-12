---
title: Installation on Dreamhost
layout: default
categories: en
---

# Installing on Dreamhost

### In your home directory:

Create directory `.gem/` (if not present)

    mkdir ~/.gem

Add the following to `~/.bash_profile`

    export GEM_HOME="$RUN/.gem"
    export GEM_PATH="$GEM_HOME:/usr/lib/ruby/gems/1.8"
    export PATH="$RUN/.gem/bin:$PATH"
    export RUBYLIB="$RUN/lib:$RUBYLIB"</pre>

Create file `~/.gemrc` with this content (there must be an empty line at the end):

    gemhome: /home/YOURUSERNAME/.gem
    gempath:
     - /home/YOURUSERNAME/.gem
     - /usr/lib/ruby/gems/1.8
    
> *REMEMBER*: Make sure the file above has an empty line at the end

### In the Redmine directory

Add to `config/environment.rb`

    ENV['GEM_PATH'] = '/home/YOURUSERNAME/.gem:/usr/lib/ruby/gems/1.8'

### SSH to your account

    gem install prawn
    gem install prawn-format
    gem install icalendar

Follow the regular [installation instructions](/en/installation/) starting at "Install Backlogs" to finish the installation.
