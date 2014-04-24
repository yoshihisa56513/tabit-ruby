require 'sinatra'
require 'haml'
if development?
  require 'sinatra/reloader'
end

require_relative 'main'

run Sinatra::Application
