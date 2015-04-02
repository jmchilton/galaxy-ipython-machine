galaxy-ipython-machine
=====================

A set of [packer](http://packer.io) and
[ansible](http://www.ansible.com/) configuration files and scripts
used to build [Ubuntu](http://www.ubuntu.com/) environment for
exploring [Galaxy's](http://galaxyproject.org) IPython interactive
environment plugin.

Using the Machine
--------------------------

Install [Vagrant](https://www.vagrantup.com/).


   % mkdir ipythontest
   % cd ipythontest 
   % wget https://raw.githubusercontent.com/jmchilton/galaxy-ipython-machine/master/test/Vagrantfile
   % vagrant up

After a download an initialization process - Galaxy with IPython
embedded should be running on port [8010](http://localhost:8010).

Setup Build
-----------------------

This project makes use of git submodules and before you build you'll
need to initialize them:

``git submodule init && git submodule update``


Example Build
-----------------------

 * Build and register Vagrant box (named ``galaxyipython``).

``vagrant_create_box.sh``

This recipe could likely be used to build Docker containers, GCE
images, AMIs, etc... but this not documented yet because we are not
using it that way. See the analogous project
[planemo-machine](https://github.com/galaxyproject/planemo-machine)
for more details.

How it works
------------

See the analogous project
[planemo-machine](https://github.com/galaxyproject/planemo-machine)
for more details.


