require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    original_string = params["user_phrase"]
    @piglatinize = PigLatinizer.new.to_pig_latin(original_string)
    erb :piglatinize
  end


end
