#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $DIR
git submodule update --init --recursive
php -r "readfile('https://getcomposer.org/installer');" | php
cd $DIR/padawan.php
$DIR/composer.phar install
