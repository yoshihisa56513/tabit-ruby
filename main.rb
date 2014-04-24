# -*- coding: utf-8 -*-

last_access_path = nil


get '/' do
  @title = "たびっと"
  puts last_access_path
  haml :index
end


get '/video/:id' do
  @id = params[:id]
  last_access_path = params[:id]
  haml :video
end

get '/:name' do 
  @name  = params[:name]
  haml :memo
end
