
def put_water
	put_test = system('curl -X POST -F "water=727" http://localhost:9999/api/v1/water/new')

	if !put_test
		puts "POST'ing data failed."
		exit
	end
	puts "POST'ing data succeeded."
end

def get_water
	result = %x|curl -X GET http://localhost:9999/api/v1/water/latest|
	if result.include?("727")
		puts "GET'ing data succeeded."
	else
		puts "GET'ing data failed."
	end
end

put_water
get_water