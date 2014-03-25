require "bundler/gem_tasks"
require "shell"

make_folder = "../meterpreter/"
target_folder = "./meterpreter"

platform_config = {
  :windows => {
    :sources => [
      "../meterpreter/output/x64",
      "../meterpreter/output/x86"
    ],
    :extensions => [
      "dll"
    ]
  },
  :posix => {
    :sources => [
      "../meterpreter/data/meterpreter"
    ],
    :extensions => [
      "lso", "bin"
    ]
  }
}

def copy_files(cnf, target_folder)
  cnf[:sources].each do |f|
    cnf[:extensions].each do |ext|
      Dir.glob("#{f}/*.#{ext}").each do |bin|
        target = File.join(target_folder, File.basename(bin))
        print("Copying: #{bin} -> #{target}\n")
        FileUtils.cp(bin, target)
      end
    end
  end
end

task :win_compile do
  Dir.chdir(make_folder) do
    system('cmd.exe /c make.bat')
  end
end

task :posix_compile do
  Dir.chdir(make_folder) do
    system('make clean && make')
  end
end

task :win_copy do
  copy_files(platform_config[:windows], target_folder)
end

task :posix_copy do
  copy_files(platform_config[:posix], target_folder)
end

task :win_prep => [:win_compile, :win_copy] do
end

task :posix_prep => [:posix_compile, :posix_copy] do
end

