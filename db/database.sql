create database if not exists docker character set utf8 collate utf8_unicode_ci;
use docker;

GRANT USAGE ON *.* TO 'docker'@'localhost' IDENTIFIED BY PASSWORD '*437BCFE6678649D15AA3271DAFE66571E4C0EC9D';
GRANT ALL PRIVILEGES ON `docker`.* TO 'docker'@'localhost';
