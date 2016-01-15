# FPM Wordpress

Everything needed to run Wordpress from a typical FPM container:

  * gd (libpng12-dev & libjpeg-dev)
  * mysqli

The PHP 5.5 build (freqout/fpm-wordpress:5.5) includes mbstring as well (not the 5.6 build, as it's [deprecated](http://php.net/manual/en/migration56.deprecated.php))

[Automated Build](https://hub.docker.com/r/freqout/fpm-wordpress/) available on the [Docker Hub](https://hub.docker.com/r/freqout/fpm-wordpress/).
