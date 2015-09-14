require 'sinatra'

get '/' do
  "<div style='border: 3px dashed blue'>
    <img src='https://www.petfinder.com/wp-content/uploads/2012/11/dog-how-to-select-your-new-best-friend-thinkstock99062463.jpg'>
   <div>"
end

get '/secret' do
  'This page is secret'
end
