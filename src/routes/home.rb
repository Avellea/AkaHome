class AkaHomeApp < Sinatra::Application
    get '/' do
        content_type 'text/plain'
        "Hello World!"
    end
end