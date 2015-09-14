require 'sinatra'

get '/' do
  @name = %w(Dan).sample
  erb :index #embedded Ruby
end

get '/hello' do
  @visitor = params[:name]
  erb :index
end

get '/secret' do
  'This page is secret'
end
