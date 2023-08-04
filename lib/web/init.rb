require 'sinatra'
require 'sinatra/namespace'

require 'dotenv/load'

class AkaHomeApp < Sinatra::Application
    enable :sessions

    Dotenv.load('.env')

    set :bind, ENV['BIND_IP']
    set :port, ENV['PORT']

    configure :production do
        set :clean_trace, true
    end

    configure :development do
        set :clean_trace, false
    end
end

require_relative '../routes/list'