# Test for sending mail notifications.
# Write this in proper rspec later. I'm lazy.

require 'dotenv/load'
Dotenv.load('.env')

def mail_spec()
    begin
        require_relative '../lib/util/mail'
        send_mail(ENV['SENDMAIL'], ENV['RECIPIENT'], 'mail_spec.rb', 'Test passed!')
        puts ENV['SENDMAIL']
        puts("Mail sent successfully.")
    rescue Exception => e
        puts("Mail not sent.")
        puts(e.message + "\n\n")
        puts(e.backtrace.inspect)
    end
end

mail_spec()