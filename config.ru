# This file is used by Rack-based servers to start the application.
require 'rubygems'
require 'bundler'

$stdout.sync = true
Bundler.require(:rack)

port = (ARGV.first || ENV['PORT'] || 3000).to_i
env = ENV['RACK_ENV'] || 'development'

require 'logger'
require 'heroku-forward'
require 'heroku/forward/backends/thin'

require ::File.expand_path('../config.ru',  __FILE__)
backend = Heroku::Forward::Backends::Thin.new(application: uwork, env: :production)
proxy = Heroku::Forward::Proxy::Server.new(backend, host: '0.0.0.0', port: 80)
proxy.logger = Logger.new(STDOUT)
proxy.forward!
