## [CMD CHALLENGE](https://cmdchallenge.com/) is a pretty cool game challenging you on Bash skills. Everything is done via the command line and the questions are becoming increasingly complicated. It’s a good training to improve your command line skills!

# COMMAND CHALLENGE SOLUTIONS

## Level 1 : print "hello world" 

>  echo "hello world" 



## Level 2 : Print the current working directory. 

>  pwd



## Level 3 : List names of all the files in the current directory, one file per line. 

>  ls -1



## Level 4 : There is a file named access.log in the current directory. Print the contents.

>  cat access.log



## Level 5 : Print the last 5 lines of "access.log".

>  cat access.log | tail -5



## Level 6 : Create an empty file named take-the-command-challenge in the current working directory.

>  touch take-the-command-challenge



## Level 7 : Create a directory named tmp/files in the current working directory 
Hint: The directory "tmp/" doesn't exist, with one command you need to create both "tmp/" and "tmp/files"

>  mkdir tmp ; cd tmp ; mkdir files 



## Level 8 : Copy the file named take-the-command-challenge to the directory tmp/files 

> cp take-the-command-challenge tmp/files



## Level 9 : Move the file named take-the-command-challenge to the directory tmp/files 

>  mv take-the-command-challenge tmp/files



## Level 10 : A symbolic link is a type of file that is a reference to another file.
Create a symbolic link named take-the-command-challenge that points to the file tmp/files/take-the-command-challenge.

>  ln -s tmp/files/take-the-command-challenge take-the-command-challenge



## Level 11 : Delete all of the files in this challenge directory including all subdirectories and their contents. 
Hint: There are files and directories that start with a dot ".", "rm -rf *" won't work here!

>  rm -r * .*



## Level 12 : There are files in this challenge with different file extensions. Remove all files with the .doc extension recursively in the current working directory.

>  rm **/*.doc



## Level 13 : There is a file named access.log in the current working directory. Print all lines in this file that contains the string "GET". 
  
>  cat access.log | grep -e "GET" 



## Level 14 : Print all files in the current directory, one per line (not the path, just the filename) that contain the string "500". 
  
>  ls | grep -lR 500



## Level 15 : Print the relative file paths, one path per line for all filenames that start with "access.log" in the current directory. 
  
>  ls -r access.log*



## Level 16 : Print all matching lines (without the filename or the file path) in all files under the current directory that start with "access.log" that contain the string "500".
Note that there are no files named access.log in the current directory, you will need to search recursively.

>  ls | grep -rh 500



## Level 17 : Extract all IP addresses from files that start with "access.log" printing one IP address per line. 
  
> grep -ro ^[0-9.]*



## Level 18 : Count the number of files in the current working directory. Print the number of files as a single integer. 
  
>  find . -type f | wc --lines 



## Level 19 : Print the contents of access.log sorted. 
  
>  cat access.log | sort



## Level 20 : Print the number of lines in access.log that contain the string "GET". 
  
>  cat access.log | grep -e "GET" | wc --lines 



## Level 21 : The file split-me.txt contains a list of numbers separated by a ; character. Split the numbers on the ; character, one number per line. 
  
>  cat split-me.txt | tr ";" "\n" 



## Level 22 : Print the numbers 1 to 100 separated by spaces. 
  
>  echo {1..100}



## Level 23 : This challenge has text files (with a .txt extension) that contain the phrase "challenges are difficult". Delete this phrase from all text files recursively.
Note that some files are in subdirectories so you will need to search for them.

>  sed -i "challenges are difficult" **/*.txt 



## Level 24 : The file sum-me.txt has a list of numbers, one per line. Print the sum of these numbers. 
  
>  awk '{s=s+$1}END{print s}' sum-me.txt



## Level 25 : Print all files in the current directory recursively without the leading directory path. 
  
>  find -type f -printf '%f\n'



##Level 26 : Rename all files removing the extension from them in the current directory recursively. 
  
>  mv * .*



## Level 27 : The files in this challenge contain spaces. List all of the files (filenames only) in the current directory but replace all spaces with a '.' character. 

>  ls | sed 's/\ /\./g' 
