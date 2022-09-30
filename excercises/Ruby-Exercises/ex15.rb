#prompts the user to enter a filename to open and saves it as a variable
filename = ARGV.first
#takes the filename variable that holds the file data, opens it and saves it as a new varaible
txt = open(filename)
#prints the string below stating the file that was selected, and then prints the files data
puts "Here's your file #{filename}:"
print txt.read
#close the file
txt.close
#prints the string below asking for an input and stores it in the variable file_agian
print "Type the filename again: "
file_again = $stdin.gets.chomp
#prints the string below stating the file that was selected, and then prints the files data
txt_again = open(file_again)
print txt_again.read
#close the file
txt_again.close
