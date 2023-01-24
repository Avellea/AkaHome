# Really basic helper function to display the message of the day. I might adapt
# this into a generic function to display any text file in the future.

def print_motd()
    motd = File.open('assets/motd.txt', 'r')
    motd_data = motd.read()
    return motd_data
end