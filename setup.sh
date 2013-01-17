#!/bin/sh

gem instal librarian
gem install vagrant
rbenv rehash
librarian-chef install --path chef/cookbooks