# -*- coding:binary -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meterpreter_bins/version'

Gem::Specification.new do |spec|
  spec.name          = "meterpreter_bins"
  spec.version       = MeterpreterBinaries::VERSION
  spec.authors       = ["OJ Reeves"]
  spec.email         = ["oj_reeves@rapid7.com"]
  spec.description   = %q{Compiled binaries for Metasploit's Meterpreter}
  spec.summary       = %q{This gem contains all the compiled binaries required to make
                        Meterpreter function. This includes Windows and POSIX binaries.}
  spec.homepage      = "http://www.metasploit.com"
  spec.license       = '3-clause (or "modified") BSD'

  spec.files         = `git ls-files`.split("\n")
  spec.files        += Dir['meterpreter/*']
  spec.executables   = []
  spec.require_paths = ['lib']

  # Since this is a pre-compiled binary, we'll need to give people a
  # hint as to what state the source was actually in when we compiled
  # up. In this way, the gem version can be linked to a commit hash and
  # users can get a sense of where in the history they are.
  spec.metadata['source']              = 'https://github.com/rapid7/meterpreter'
  spec.metadata['source_commit']       = 'e77c87cdb79a2732108be937e056622b45cb093c'
  spec.metadata['source_commit_url']   = "#{spec.metadata['source']}/commit/#{spec.metadata['source_commit']}"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
