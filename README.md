Lant
====
Lant is a XAMPP Vagrant development box.

### Depencies

 * [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
 * [Vagrant](https://www.vagrantup.com/downloads.html)
 * git

### Installation
 
 * Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/downloads.html)
 * `git clone` this repository.
 * `vagrant up` to build a dev environment. This might take 10min - 20min, so go and have a cup of tea.
 * `vagrant halt && vagrant up` to restart VM, and finish configuration.

### Development

 * You php code goes to `www` folder
 * Navigate to [http://192.168.55.55](http://192.168.55.55) to access server
 * PHPMyAdmin [http://192.168.55.55/phpmyadmin](http://192.168.55.55/phpmyadmin)
 * Have fun.