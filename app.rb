require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combination')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do
  @anagram = params.fetch("anagram")
  erb(:anagram)
end
