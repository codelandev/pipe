require 'bundler'
Bundler.require
require 'sass/plugin/rack'
require './app'

ENV['RACK_ENV'] ||= 'development'
not_in_production = ENV['RACK_ENV'] != 'production'

use Sass::Plugin::Rack
use Rack::Deflater

Slim::Engine.set_options pretty: not_in_production

run App
