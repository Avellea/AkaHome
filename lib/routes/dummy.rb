require 'date'

class AkaHomeApp < Sinatra::Application
    namespace '/api/v1' do

        before do
            content_type 'application/json'
        end

        get '/dummy' do
            d = DateTime.now
            "Server running!\nHello world!".to_json
            # "Time is " + d.strftime("%d/%m/%Y %H:%M:%S").to_json
        end

        get '/ping' do
            "200 OK".to_json
        end
    end
end