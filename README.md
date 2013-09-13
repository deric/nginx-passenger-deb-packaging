# Nginx-passenger Debian packaging

Simple build script for compiling a debian package which can be easily distributed over a cluster. Should be more or less equivalent to the official Debian package, except [Phusion Passenger](https://www.phusionpassenger.com/) integration.

Script allows modification of included modules etc. if you are familiar with bash syntax you can customize the build according to your needs.

Note: There are official deb packages for Debian and Ubuntu from Phusion company, which are easier to deploy if you don't need special modifications. [official debian packages](http://blog.phusion.nl/2013/09/11/debian-and-ubuntu-packages-for-phusion-passenger/)

### Requirements

  * ruby (recommended >= 1.9.3)
  * gems: [FPM](https://github.com/jordansissel/fpm), [passenger](https://github.com/FooBarWidget/passenger)
  * autoconf, make, g++
  * lib SSL
  * PCRE development headers
  * Curl development headers with SSL support
  * Zlib development headers

in commands: 

       sudo apt-get install autoconf automake wget make zlib1g-dev libpcre3-dev libcurl4-openssl-dev

### Usage

   1. install prerequisites, install ruby, we recommend using [RVM](http://rvm.io/)
   2. `gem install rake fpm passenger`
   3. for modifying build parameters you have to edit `build_nginx` script
   4. if you want specific version of nginx, it is specified by `VERSION` variable at the begining of `build_nginx` script (currently nginx 1.5.1 is fetched from the official website)
   5. just run script with your distribution name (tested on `squeeze`, `wheezy`)

        ./build_nginx wheezy

### Included modules

 * **Standard HTTP Modules**: Core, Access, Auth Basic, Auto Index, Browser, Charset, Empty GIF, FastCGI, Gzip, Headers, Index, Log, Limit Requests, Limit Zone, Map, Memcached, Proxy, Referer, Rewrite, Split Clients, SSI, Upstream, User ID, UWSGI
 * **Optional HTTP Modules**: Debug, Gzip Precompression, IPv6, Stub Status, SSL, Passenger, WebDAV

### TODO

 * support multiple build profiles (something like nginx-full, nginx-naxis)
 * add support for Ubuntu upstart scripts
 * pass parameters via arguments


