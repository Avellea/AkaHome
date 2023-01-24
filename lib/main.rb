#!/usr/bin/ruby

require 'dotenv/load'
require_relative 'util/motd'

def main()
    Dotenv.load('.env')
    puts(print_motd())
end

main()