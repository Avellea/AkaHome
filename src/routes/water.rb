require 'csv'

class AkaHomeApp < Sinatra::Application
    namespace '/api/v1' do
        
        # Get latest water log entry
        get '/water/latest' do
            content_type 'text/plain'
            lines = IO.readlines("assets/water.csv")[-1]
            "#{lines}"
        end

        # Get all water log entries
        get '/water/all' do
            content_type 'text/plain'
            lines = IO.readlines("assets/water.csv")
            "#{lines}"
        end

        # Post new log entry
        post '/water/new' do
            content_type 'text/plain'
            time = Time.new
            CSV.open("assets/water.csv", "a+") do |csv|
                csv << ["#{time.day}/#{time.month}/#{time.year}", "#{params["water"]}oz"]
                csv.close()
            end
        end
    end
end