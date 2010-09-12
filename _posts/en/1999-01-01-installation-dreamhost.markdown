---
title: Installation on Dreamhost
layout: default
categories: en
---

# Installing on Dreamhost

*In home directory* :
1.Create directory /.gem (if not present)

2.add to .bash_profile
<pre>  export GEM_HOME="$RUN/.gem"
  export GEM_PATH="$GEM_HOME:/usr/lib/ruby/gems/1.8"
  export PATH="$RUN/.gem/bin:$PATH"
  export RUBYLIB="$RUN/lib:$RUBYLIB"</pre>

3.Create file .gemrc with this content(there must be an empty line at
the end):

    gemhome: /home/YOURUSERNAME/.gem
    gempath:
     - /home/YOURUSERNAME/.gem
     - /usr/lib/ruby/gems/1.8

*In Redmine directory :*
1.Add to /config/environment.rb

    ENV['GEM_PATH'] = '/home/YOURUSERNAME/gems:/usr/lib/ruby/gems/1.8'

*SSH to your account*
1.gem install prawn
2.gem install prawn-format
3.gem install icalendar

Follow the regular [installation
instructions](/en/installation/) starting at "Install Backlogs" to
finish the installation.
