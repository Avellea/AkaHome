require 'mail'
require 'dotenv/load'

Dotenv.load('.env')

def send_mail(sender, recipient, mail_subject, mail_body)
    Mail.defaults do
        delivery_method :smtp, {
            :address => 'smtp.gmail.com',
            :port => '587',
            :user_name => sender,
            :password => ENV['PASSWORD'],
            :authentication => "plain",
            :enable_starttls_auto => true
        }
    end

    mail = Mail.new do
        from sender
        to recipient
        subject mail_subject
        body mail_body
    end

    mail.deliver!

end