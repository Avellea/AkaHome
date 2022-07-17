#!/usr/bin/ruby

require 'fileutils'

bind_ip = ''
bind_port = ''

def get_motd(motd_loc)
    motd = File.open(motd_loc, "r")
    motd_data = motd.read
    motd.close
    return motd_data
end

def file_check()
    if !File.file?("assets/water.csv")
        puts "Water log does not exist, creating..."
        FileUtils.touch("assets/water.csv")
    end
end

def main(ip, port)
    bind_ip = ip
    bind_port = port
    
    puts get_motd("assets/motd.txt")
    puts "============================================================"
    
    file_check()

    begin
        require_relative './web'
        AkaHomeApp.run!(:host => bind_ip, :port => bind_port)
    rescue Exception => e
        puts "Error starting server on #{ip}:#{port}"
        puts e.message + "\n\n"
        puts e.backtrace.inspect
    end
end
