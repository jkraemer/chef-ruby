Description
===========

simple wrapper around the ruby_build recipe

Requirements
============

Attributes
==========

node[:ruby][:version] - the ruby version to be installed

Usage
=====

Include the recipe in your run list and specify node[:ruby][:version]

The recipe will set the following node properties:

[:ruby][:dir] - wher eruby was installed
[:ruby][:gem] - full path to gem binary
[:ruby][:ruby] - full path to ruby binary


