  require 'bundler'
  Bundler.require
  $:.unshift File.expand_path("./../lib", __FILE__)

  require 'app/router'
  # require ... files ...


  Router.new.perform
  
