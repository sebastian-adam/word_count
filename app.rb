require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')

get('/') do
  erb(:index)
end

get('/results') do
  @word = params.fetch('word')
  @sentence = params.fetch('sentence')
  @counter = @sentence.word_count(@word).to_s
  erb(:results)
end
