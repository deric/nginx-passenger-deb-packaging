# Nginx-passenger Debian packaging

Simple build script for creating a debian package which can be easily distributed over a cluster. Should be more or less equivalent to the official Debian package, except [Phusion Passenger](https://www.phusionpassenger.com/) integration.

Script allows modification of included modules etc. if you are familiar with bash syntax, so that you can customize the binary according to your needs.

### Requirements

  * [FPM](https://github.com/jordansissel/fpm)
  * ruby (>= 1.9.3)
  * autoconf
  * make
  * g++
  * passenger gem
  * libSSL
  * libpcre3

in commands: 

       sudo apt-get install autoconf automake wget make zlib1g-dev libpcre3-dev

### Usage

   * install prerequisites, install ruby, we recommend using [RVM](http://rvm.io/)
   * `gem install rake fpm passenger`
   * just run script with your distribution name (tested on `squeeze`, `wheezy`)

        ./build_nginx wheezy

   * for modifying build parameters you have to edit `build_nginx` script 
   * if you want specific version of nginx, it's specified at the begining of `build_nginx` script (currently nginx 1.5.1 is fetched from the website)

### TODO

    * support multiple build profiles (something like nginx-full, nginx-naxis)
    * add support for Ubuntu upstart scripts
    * pass parameters via arguments

### Included modules

    * **Standard HTTP Modules**: Core, Access, Auth Basic, Auto Index, Browser, Charset, Empty GIF, FastCGI, Gzip, Headers, Index, Log, Limit Requests, Limit Zone, Map, Memcached, Proxy, Referer, Rewrite, Split Clients, SSI, Upstream, User ID, UWSGI
   * **Optional HTTP Modules**: Debug, Gzip Precompression, IPv6, Stub Status, SSL, Passenger, WebDAV


