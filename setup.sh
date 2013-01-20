#!/bin/sh

gem instal librarian
gem install vagrant
rbenv rehash
librarian-chef install --path chef/cookbooks

for f in chef/roles/*.example
do
  new_filename="${f%.*}"
  cp -f $f $new_filename
done