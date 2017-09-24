Gem::Specification.new do |s|
  s.name = %q{tallakt-picsort}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tallak Tveide"]
  s.date = %q{2009-11-10}
  s.default_executable = %q{picsort}
  s.description = %q{A simple command line utility that reads the date of image files ans moves them to a folder with the same name aas the ate}
  s.email = %q{tallak@tveide.net}
  s.executables = ["picsort"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/picsort"
  ]
  s.homepage = %q{http://github.com/tallakt/tallakt-picsort}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Move image files to folders based on exif date}
  s.add_runtime_dependency "exifr", "~> 1.3"
end

