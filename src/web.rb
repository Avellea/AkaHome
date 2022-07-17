require 'sinatra'
require 'sinatra/namespace'

class AkaHomeApp < Sinatra::Application
    enable :sessions

    set :bind, ARGV[0]
    set :port, ARGV[1]

    configure :production do
        set :clean_trace, true
    end

    configure :development do
        set :clean_trace, false
    end

    puts "Starting server on #{bind}:#{port}"

end

require_relative 'routes/init'
