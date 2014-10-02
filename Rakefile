
task(:default) do
	require './test/test_twitter.rb'
end

desc "correr los test"
	task :test => :default
desc "correr servidor"
	task :server do
		sh "ruby twitter.rb"
	end

desc "bundle install"
	task :bundle do
		sh "bundle install"
	end
