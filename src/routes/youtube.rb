class AkaHomeApp < Sinatra::Application

	namespace '/api/v1' do
		
		post '/youtube' do
			content_type 'text/plain'
			puts "Opening #{params[:url]} in Firefox..."
			system('start "C:\Program Files\firefox Developer Edition\firefox.exe" ' + params[:url])
		end
	end
end