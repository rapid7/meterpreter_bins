# Meterpreter Binaries

This gem is a Metasploit-specific gem that contains all of the
compiled binaries for the Meterpreter payload. This is made up of:

* Windows DLLs
* POSIX LSOs
* POSIX BIN

The other files have been left alone for now.

## Installation

Given the nature of the contents of this gem, installation
outside of Metasploit is not advised. To use Meterpreter,
download and install Metasploit itself.

## Building

To build the gem:

1. Update the version number in `lib/meterpreter_binaries/version.rb`
1. Copy the updated binaries into the `data/meterpreter` folder.
1. Run `rake build` to generate the new gem file.
1. Run `rake release` to release the binary to RubyGems.

Note, when using the command `rake win_prep` and related Windows rake
tasks, you must be in the Visual Studio Developer command prompt,
**and** have a path to a git binary in your default path. If your
git.exe is part of posh-git or GitHub for Windows, that means adding
something like the following to your path:

`"C:\Users\USERNAME\AppData\Local\GitHub\PortableGit_LONG_UUID_STRING_THING\bin"`

