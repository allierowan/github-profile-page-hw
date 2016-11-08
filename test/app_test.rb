require 'minitest/autorun'
require 'minitest/pride'
require 'rack/test'
require './app.rb'

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

end
