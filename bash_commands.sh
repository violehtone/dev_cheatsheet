#############################
# Shebang / Running scritpts
#############################
# make bash script executable
#!/bin/bash

# make a code script executable
#!/usr/bin/env python3
#!/usr/bin/env perl

# Running bash (.sh) scripts
chmod +x <script_name.sh> # -> sets execute permission
./<script_name.sh> # -> run the script

######################
# apt package manager
######################
# Updating & upgrading packages
sudo apt-get update # -> updates list of available packages
sudo apt-get upgrade # -> upgrade packages you already have

##########################
# File system navigation
##########################
pwd # print working directory
ls  # list files
cd  # change directory
cd ~ # move to home directory
cd / # move to root directory
find / -name foo.bar # find files located in system

############################
# Creating / removing files
############################
mkdir <dir_name> # create a new folder 
nano <file_name> # create/open a txt file using nano text editor
touch <file_name> # create a new file
rmdir <dir_name> # remove a directory
rm <file_name> # remove a file
wget <http-address> # <- download file from internet

###################
# Inspecting files
###################
cat <file_name> # Print file content
more <file_name> # Display file content one screen at time
less <file_name> # Display file content (allows to move up and down)
head <file_name> # Display first 10 lines of a file
tail <file_name> # Display last 10 lines of a file
wc <file_name> # Display number of lines, words, and chars in a file
grep <string> <file_name> # Find a string in a file (grep = global regular expression print).
grep <string> <file_a> <file_b> # search multiple files
ls -lh <file_name> # Display the size of the file

##################
# Wrangling files
##################
sort <file_name> # sorts the contents of a file (i.e. alphabetically)
uniq <file_name> # filters out the repeated lines in a file

#####################
# Handling processes
#####################
ps -ax # list all processes currently running
kill <process_id> # cancel a process (cleanest way)
kill -1 <process_id> # kill process and any child processes
kill -9 <process_id> # last resort: stop the process dead in its tracks

########
# Other
########
man <command> # get manual of the command
clear # clears the command prompt
free -h # Display free disc space
ssh username@<hostname> # connect to SSH server on a remote machine
echo <text> # print text on command line
tr <set1> <set2> # translate characters from set1 to set2 (i.e. lowercase to uppercase)
cut <file_name> [option] # cut and prints lines of file, i.e. $ cut -c 1-7 <file> prints characters 1-7 of each line
tar cvzf <file.tar.gz> <folder> # Create a tar file from all files in folder
tar xvf <file.tar> # Extract files from a tar file
<function> <arg> | <function2> # piping = passing output of first function to the second

############################
# Curl (command line tool)
############################
# Transfer data from a server
curl <url_address> # display content of url on terminal
curl <url>/<filename> # get a file from url address
curl -u name:passwd <url> # provide username/pw with the query

# Transfer data to a server
curl -T <local_file> -u user:passwd <url> # transfer a local file to specified url address

############################
# AWK (scripting language)
############################
awk '{print}' <file_name> # print every line of data from file
awk '/some_string/ {print}' <file_name> # print lines that match given string
awk '{print $1, $4}' <file_name> # for each line, split it by whitespace and store in $n variables (i.e. 1st and 4th word)