# A simple script to start the server.

def run()
    if ARGV.length == 2
        ip = ARGV[0]
        port = ARGV[1]
        require_relative 'src/main'
        main(ip, port)
    else
        puts "Usage: ruby start.rb <ip> <port>"
    end
end

run
# main('0.0.0.0', 9999)