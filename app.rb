require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
require 'show'
require 'application'
require 'board'
require 'boardcase'

Application.new.perform