require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do
  @anagram1 = params.fetch("anagram1")
  @anagram2 = params.fetch("anagram2")
  @returns = @anagram1.anagram(@anagram2)
  erb(:anagram)
end
