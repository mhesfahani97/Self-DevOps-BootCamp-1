#go to previous directory
cd -

#show all and list files of here and in every directory of here with human readable format size and sort them base on size
ls -alhSR

#what is the file type (even inside a zip file or linked file)
file -zL /bin

#concatenate files in one file
cat file1.txt file2.txt > sum.txt

#show the sum.txt contents with line number and end of line
cat -en sum.txt

#tac is the reverse of cat

#show the last n lines of a file with the file name, cotinuesly
tail -f -n 5 -v 

#head command is reverse of tail, you can concatenate with tail and head command

#show columns 2 and 4 | show columns 2 to 4
cut -d , -f2,4 file3.txt
cut -d , -f2-4 file3.txt

#show characters 3 to 8 of each lines
 cut -c3-8 file3.txt

#sum of the third column | if column 4 is larger than column 2 show column one and four | if length of column 1 characters is greater than 17 show column one
awk '{ sum +=  } END { print Total:  sum }' file3.txt
awk ' > 2 { print ,  }' file3.txt
awk 'length() > 17 { print  }' file3.txt

#show every line don't has yes or YES from test directory files | 
grep -irv 'yes' test/

#don't show comments and free lines
egrep -vr '^($|#)' test/

#find the last 7 days ago modified file
find ./test/ -name fil* -mtime -7 -type f

#prints lines 2 to 3 | delete empty lines | append a man after lines contains ali
sed -n 2,3p test/file3.txt
sed /^$/d test/file3.txt
sed /ali/aa man test/file3.txt

