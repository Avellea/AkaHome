#!/usr/bin/ruby

require 'dotenv/load'
require 'logger'
require 'rainbow'
require_relative 'util/motd'

def main()
    Dotenv.load('.env')
    # puts(print_motd())
    log = Logger.new(STDOUT)
    log.debug("Debug message")
    log.info("Info message")
    log.warn("Warn message")
    log.error("Error message")
    log.fatal("Fatal message")
    log.unknown("Unknown message")

    puts(Rainbow("Hello, world!").red)

end

main()