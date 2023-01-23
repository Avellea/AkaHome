desc "Set up the build environment"
task :bootstrap do
    desc "Set up the build environment"
    task :bootstrap do
        puts("Installing dependencies...")
        system("bundle install")
        support()
    end

    def support
        print("\n\n\nThanks for installing AkaHome!\n\n\n")
        print("If you find any bugs or have any suggestions, please report them at https://github.com/Avellea/AkaHome/issues\n\n\n")
    end
end

desc "Configure AkaHome"
task :config do
    if !File.exists?(".env")
        puts("Environment variables not found. Creating .env file...")
        FileUtils.touch(".env")
    else
        puts(".env file already exists. Skipping...")
    end
    configure_port()
    configure_mail()
end

def configure_port
    puts("What port would you like to run AkaHome on? (Default: 3000)")
    port = STDIN.gets.chomp
    port = 3000 if port == "\n"
    File.open(".env", "a") do |f|
        f.write("PORT=#{port}\n")
        f.close()
    end
end

def configure_mail
    puts("What email would you like to send notifications?")
    email = STDIN.gets.chomp
    if email == "\n"
        puts("You must enter an email address.")
        configure_mail()
    end
    File.open(".env", "a") do |f|
        f.write("SENDMAIL=#{email}\n")
        f.close()
    end
    puts("And the recipient?")
    recipient = STDIN.gets.chomp
    if recipient == "\n"
        puts("You must enter an email address.")
        configure_mail()
    end
    File.open(".env", "a") do |f|
        f.write("RECIPIENT=#{recipient}")
        f.close()
    end
end