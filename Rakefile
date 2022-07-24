namespace "config" do

	desc "Set up AkaHome"
	task :all do
		Rake::Task["config:db"].invoke
	end

	desc "Create databases"
	task :db do
		if !File.file?("assets/water.csv")
			puts "Water log does not exist, creating..."
			FileUtils.touch("assets/water.csv")
		else
			puts "Water log exists"
		end
	end

end