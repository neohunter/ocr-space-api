require 'singleton'

class Configurator
  include Singleton
  attr_accessor :apikey
end