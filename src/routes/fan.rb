class AkaHomeApp < Sinatra::Application

    fan_status = "unknown"

    namespace '/api/v1' do

        # Get status of lightswitch
        get '/fan' do
            content_type 'text/plain'
            "#{fan_status}"
        end

        # Toggle lightswitch
        post '/fan/set' do
            content_type 'text/plain'
            if params['fan'] == 'on'
                fan_status = 'on'
                # io.digital_write(led, WiringPi::HIGH) # Engage lightswitch servo
            elsif params['fan'] == 'off'
                fan_status = 'off'
                # io.digital_write(led, WiringPi::LOW) # Disengage lightswitch servo
            else
                fan_status = 'unknown'
                # io.digital_write(led, WiringPi::LOW) # Disengage for safety.
            end
        end
    end
end