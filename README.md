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

## Custom configuration

If you want to set custom configuration in the Vagrantfile, just place another file in the directory where Vagrantfile is calles `Customfile` an put your Vagrant configurations there.

For loading a custom provision script, eg. for symlinking your plugin project on your host machine to the virtual environment, place a file called `custom-setup.sh` in the directory `provision`. It will be loaded after all provisioning is done.

## Environment

1. [Ubuntu](http://ubuntu.com) 12.04 LTS (Precise Pangolin)
1. [apache](http://httpd.apache.org/) 2.2
1. [mysql](http://mysql.com) 5.5.31
1. [php5]
1. [libapache2-mod-php5]
1. [PHPUnit](http://pear.phpunit.de/) 3.7.21
1. [git](http://git-scm.com) 1.8.3
1. [subversion](http://subversion.apache.org/) 1.7.9
1. [WordPress 3.1](http://wordpress.org)
1. [WordPress 3.2](http://wordpress.org)
1. [WordPress 3.3](http://wordpress.org)
1. [WordPress 3.4](http://wordpress.org)
1. [WordPress 3.5](http://wordpress.org)
1. [WordPress 3.5.1](http://wordpress.org)
1. [WordPress trunk](http://core.svn.wordpress.org/trunk)
1. [WP-CLI](http://wp-cli.org)
1. [phpmyadmin](http://www.phpmyadmin.net/)
1. [Composer](https://github.com/composer/composer)

## Credentials

### WordPress

All WordPress installations have the same credentials

* DB User: `wp`
* DB Pass: `wp`
* Admin User: `admin`
* Admin Pass: `123`

### MySQL
* MySQL root user: `root`
* MySQL root password: `blank`