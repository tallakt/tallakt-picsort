#!/usr/bin/env ruby

require 'rubygems'
require 'exifr'
require 'fileutils'
require 'optparse'

options = {:base => '.'}
opts = OptionParser.new do |opts|
	opts.banner = "Usage: picsort [options] <files>"

	opts.on("-b", "--base BASEDIR", "Base folder (default: current path)") do |v|
		p 'BASE ' + v
		options[:base] = v
	end
	# No argument, shows at tail.  This will print an options summary.
	# Try it and see!
	opts.on_tail("-h", "--help", "Show this message") do
		puts opts
		exit
	end
end.parse!


ARGV.each do |imgfile|
	begin
		date = nil
		begin
			date = EXIFR::JPEG.new(imgfile).date_time 
		rescue
			date = EXIFR::TIFF.new(imgfile).date_time 
		end

		foldername = File.join(options[:base], '%04i_%02i_%02i' % [date.year, date.month, date.day])
		newfilename = File.join(foldername, File.split(imgfile).last)

		if File.expand_path(imgfile) != File.expand_path(newfilename)
			puts '%s -> %s' % [imgfile, newfilename]

			FileUtils.mkdir_p foldername
			FileUtils.mv imgfile, newfilename, :force => true
		end
	rescue RuntimeError
		# ok.. no info available
	rescue
		$stderr.puts $!
	end
end

