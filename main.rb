def main # wrapped all the code into a main class
  puts "Welcome to CDir."
  sleep 0.2
  puts "v0.3a"
  sleep 3
  system ("gem install fileutils > /dev/null")
  print "Please wait while the script is starting."
  require "fileutils"
  sleep 1
  print "\rPlease wait while the script is starting.."
  sleep 1
  print "\rPlease wait while the script is starting..."
  sleep 1
  print "\rPlease wait while the script is starting."
  sleep 1
  print "\rPlease wait while the script is starting.."
  sleep 1
  print "\rPlease wait while the script is starting..."
  print "\r"
  print "Enter the name of the directory you want to manipulate. (ex. ~/CDir/testdir/coolotherdir/.)\n"
  dirname = gets.chomp
  dirchoice = File.dirname(dirname)
    FileUtils.mkdir_p(dirname)
    puts "Directory is valid."
  if File.directory?(dirname)
    puts "Select the action you want to do.\n"
    sleep 1
    puts "(1) Delete dir (2) Rename directory (3) Create new folder inside dir (4) Move directory (5) Copy directory\n"
    input = gets.to_i
    if input == 1
      puts "Deleting directory...\n"
      FileUtils.rm_rf(dirname)
      puts "Directory deleted.\n"
      load "resume.rb"
  elsif input == 2
      puts "Type in the folder you want to rename.\n"
      inp2 = gets.chomp
      puts "What do you want the new folder name to be?\n"
      inp3 = gets.chomp
      FileUtils.mv inp2, inp3
      puts "Directory renamed.\n"
      load "resume.rb"
      elsif input == 3
          puts "What do you want the folder name to be?\n"
            inp4 = gets.chomp
            FileUtils.mkdir_p(inp4)
            puts "Directory created."
            load "resume.rb"
          elsif input == 4
            puts "Where do you want to move this folder?"
            inp5 == gets.chomp
            FileUtils.mv dirname, inp5
            puts "Moved directory succesfully."
            load "resume.rb"
            elsif input == 5
              puts "Where do you want to copy the folder to?"
              inp6 = gets.chomp
              FileUtils.cp_r dirname, inp6
              puts "Directory copied succesfully."
              load "resume.rb"
            else
            puts "Sorry, that wasn't a valid option. Please try again.\n"
            sleep 3
            load "resume.rb" 
          end
        end
      end
main
# EOF