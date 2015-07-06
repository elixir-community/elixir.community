require 'sinatra/base'
require 'haml'

class Website < Sinatra::Base
  get '/' do
    haml :index, locals: {title: '{:ok, "welcome"}'}
  end

  get '/styleguide' do
    haml :styleguide, locals: {title: 'styleguide'}
  end

  get '/talk' do
    haml :talk, locals: {title: 'talk'}
  end

  get '/materials' do
    haml :materials, locals: {title: 'materials'}
  end

  get '/meetups' do
    haml :meetups, locals: {title: 'meetups'}
  end
end
