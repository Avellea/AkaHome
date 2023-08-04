#!/usr/bin/ruby

require 'fileutils'
require 'dotenv/load'
require 'logger'
require_relative 'util/motd'

def main()
    Dotenv.load('.env')
    log = Logger.new(STDOUT)

    puts(print_motd())
    puts "=" * 47

    begin
        require_relative './web/init.rb'
        puts("Starting server on #{ENV['BIND_IP']}:#{ENV['PORT']}")
        AkaHomeApp.run!(:host => ENV['BIND_IP'], :port => ENV['PORT'])
    rescue Exception => e
        log.error("Cannot start server on #{ENV['BIND_IP']}:#{ENV['PORT']}")
        log.error(e.message  + "\n\n")
        log.error(e.backtrace.inspect)
    end

end

main()