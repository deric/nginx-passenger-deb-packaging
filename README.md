# Nginx-passenger Debian packaging

Build scripts to create a Debian package with FPM which can be easily distributed as a debian package.

Script allows modification of included modules etc. if you are familiar with bash syntax, so that you can customize the binary according to your needs.

## Requirements

  * FPM (https://github.com/jordansissel/fpm)
  * git
  * ruby (>= 1.9.3)
  * autoconf
  * make
  * g++
  * passenger gem
  * libSSL

in commands: 

       gem install fpm passenger
       sudo apt-get install autoconf automake wget make zlib1g-dev libpcre3-dev

### TODO

    * support multiple build profiles (something like nginx-full, nginx-naxis)
    * add Ubuntu upstart scripts

