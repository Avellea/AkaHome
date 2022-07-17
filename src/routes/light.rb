class AkaHomeApp < Sinatra::Application

    light_status = "unknown"

    namespace '/api/v1' do

        # Get status of lightswitch
        get '/light' do
            content_type 'text/plain'
            "#{light_status}"
        end

        # Toggle lightswitch
        post '/light/set' do
            content_type 'text/plain'
            if params['light'] == 'on'
                light_status = 'on'
                # io.digital_write(led, WiringPi::HIGH) # Engage lightswitch servo
            elsif params['light'] == 'off'
                light_status = 'off'
                # io.digital_write(led, WiringPi::LOW) # Disengage lightswitch servo
            else
                light_status = 'unknown'
                # io.digital_write(led, WiringPi::LOW) # Disengage for safety.
            end
        end
    end
end