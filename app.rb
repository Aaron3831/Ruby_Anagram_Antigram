require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do
  @anagram = params.fetch("anagram").anagram()
  erb(:anagram)
end
