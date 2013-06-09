# ifw WordPress Dev Environment

This is the environment I use for developing WordPress plugins. 

It uses [Vagrant](http://vagrantup.com) and [VirtualBox](http://virtualbox.org) to setup a virtual server environment with several WordPress version.

It is inspired by [Varying Vagrant Vagrants](https://github.com/10up/varying-vagrant-vagrants)

## Getting Started

1. You can use it on any operating system. Vagrant and VirtualBox have installation packages for Windows, OSX and Linux.
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
1. Install [Vagrant](http://downloads.vagrantup.com/)
1. Clone this repository into a local directory
    * `git clone git://github.com/ifeelweb/ifwWordPressDevEnvironment.git wp-dev-local`
1. Change into the new directory
    * `cd wp-dev-local`
1. Start the Vagrant environment
    * `vagrant up`
    * Be patient, this could take a while, especially on the first run.
1. Add these records to your local machine's hosts file
    * `192.168.33.10  wp.dev`    
    * `192.168.33.10  pma.dev`    
1. Visit `http://wp.dev/3.5.1` in your browser to load WordPress version 3.5.1. To load another version, just change the version in the URL to 3.1 / 3.2 / 3.3 / 3.4 / 3.5. Enter wp.dev/trunk to load the current WP beta version.
1. A copy of phpMyAdmin will be available on `http://pma.dev/`


## Credentials

### WordPress

All WordPress installation have the same credentials

* DB User: `wp`
* DB Pass: `wp`
* Admin User: `admin`
* Admin Pass: `123`

### MySQL
* MySQL root user: `root`
* MySQL root password: `blank`