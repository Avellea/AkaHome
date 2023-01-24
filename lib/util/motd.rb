require 'fileutils'

def print_motd()
    motd = File.open('assets/motd.txt', 'r')
    motd_data = motd.read()
    return motd_data
end