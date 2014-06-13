# -*- coding:binary -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meterpreter_bins/version'

Gem::Specification.new do |spec|
  spec.name          = "meterpreter_bins"
  spec.version       = MeterpreterBinaries::VERSION
  spec.authors       = ["OJ Reeves", "Tod Beardsley", "Chris Doughty"]
  spec.email         = ["oj@buffered.io", "tod_beardsley@rapid7.com", "chris_doughty@rapid7.com"]
  spec.description   = %q{Compiled binaries for Metasploit's Meterpreter}
  spec.summary       = %q{This gem contains the compiled binaries required to make
                        Meterpreter function for Windows 32-bit and 64-bit targets.
                        Other binaries will be added in future versions.}
  spec.homepage      = "http://www.metasploit.com"
  spec.license       = '3-clause (or "modified") BSD'

  spec.files         = `git ls-files`.split("\n")
  spec.files        += Dir['meterpreter/*']
  spec.executables   = []
  spec.require_paths = ['lib']

  # NOTE: I had to comment out all the metadata sections because, for some reason,
  # my local installation of ruby/rake seems to think that metadata isn't valid.
  # I get the following error:
  #   C:\code\meterpreter_bins>rake win_prep
  #   rake aborted!
  #   There was a NoMethodError while loading meterpreter_bins.gemspec:
  #   undefined method `metadata' for #<Gem::Specification name=meterpreter_bins version=0.0.1> from
  #     C:/code/meterpreter_bins/meterpreter_bins.gemspec:29:in `block in <main>'
  #   C:/code/meterpreter_bins/Rakefile:1:in `<top (required)>'
  #   (See full trace by running task with --trace)

  # Since this is a pre-compiled binary, we'll need to give people a
  # hint as to what state the source was actually in when we compiled
  # up. In this way, the gem version can be linked to a commit hash and
  # users can get a sense of where in the history they are.
  #spec.metadata['source']              = 'https://github.com/rapid7/meterpreter'
  #spec.metadata['source_commit']       = 'e77c87cdb79a2732108be937e056622b45cb093c'
  #spec.metadata['source_commit_url']   = "#{spec.metadata['source']}/commit/#{spec.metadata['source_commit']}"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "gem-release"
end
