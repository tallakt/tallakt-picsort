require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "tallakt-picsort"
    gem.summary = %Q{Move image files to folders based on exif date}
    gem.description = %Q{A simple command line utility that reads the date of image files ans moves them to a folder with the same name aas the ate}
    gem.email = "tallak@tveide.net"
    gem.homepage = "http://github.com/tallakt/tallakt-picsort"
    gem.authors = ["Tallak Tveide"]
    gem.add_development_dependency "thoughtbot-shoulda", ">= 0"
		gem.executables = ["picsort"]
		gem.add_runtime_dependency(%q<exifr>, [">= 0.10.8"])
	# gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "tallakt-picsort #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
