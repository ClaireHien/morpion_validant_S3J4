require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
require 'application'
require 'board'
require 'boardcase'

#lance le jeu
Application.new.perform