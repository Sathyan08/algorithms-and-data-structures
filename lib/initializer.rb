# This file contains the code to load the Gemfile as well as the relevant activesupport libraries.

require 'rubygems'
require 'bundler'

Bundler.require(:default)

require 'active_support/all'
require 'active_support/core_ext/module/delegation'
