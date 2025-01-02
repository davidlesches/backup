# encoding: utf-8

require File.expand_path("lib/backup/version")

Gem::Specification.new do |gem|
  gem.name        = "backup"
  gem.version     = Backup::VERSION
  gem.authors     = "Michael van Rooijen"
  gem.email       = "meskyanichi@gmail.com"
  gem.homepage    = "https://github.com/backup/backup"
  gem.license     = "MIT"
  gem.summary     = "Provides an elegant DSL in Ruby for performing backups "\
    "on UNIX-like systems."
  gem.description = <<-EOS.gsub(/\s+/, " ").strip
    Backup is a RubyGem, written for UNIX-like operating systems, that allows
    you to easily perform backup operations on both your remote and local
    environments. It provides you with an elegant DSL in Ruby for modeling your
    backups.  Backup has built-in support for various databases, storage
    protocols/services, syncers, compressors, encryptors and notifiers which
    you can mix and match. It was built with modularity, extensibility and
    simplicity in mind.
  EOS

  gem.files = `git ls-files -- lib bin templates README.md LICENSE`.split("\n")
  gem.require_path  = "lib"
  gem.executables   = ["backup"]

  gem.required_ruby_version = ">= 2.0"

  gem.add_dependency "thor", "~> 0.18", ">= 0.18.1"
  gem.add_dependency "open4", "1.3.0"
  # gem.add_dependency "fog", "~> 2.3.0"
  gem.add_dependency "fog-aws", "~> 3.30.0"
  gem.add_dependency "excon", "~> 1.2"
  gem.add_dependency "unf", "0.2.0" # for fog/AWS
  gem.add_dependency "net-ssh", "5.2.0"
  gem.add_dependency "net-scp", "~> 2.0.0"
  gem.add_dependency "net-sftp", "2.1.2"
  gem.add_dependency "mail", "~> 2.6", ">= 2.6.6"
  gem.add_dependency "aws-sdk", "~> 2.11"
  gem.add_dependency "nokogiri", "~> 1.10", ">= 1.10.9"

  gem.add_development_dependency "rubocop", "0.48.1"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "3.8.0"
  gem.add_development_dependency "timecop", "0.9.1"
end
