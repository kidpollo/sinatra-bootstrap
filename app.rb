require 'sinatra/base'
require 'sinatra/content_for2'
require 'slim'
require 'coffee_script'
require 'sprockets'

# stuff in lib
require './lib/sprockets_sinatra_middleware'

module Namespace
  class App < Sinatra::Base
    helpers Sinatra::ContentFor2

    set :root, File.dirname(__FILE__)  
  
    use ::SprocketsSinatraMiddleware, :root => settings.root, :path => 'assets' 
  
    get "/" do
      slim :index
    end
  end
end
