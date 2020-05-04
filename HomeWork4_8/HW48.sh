
#!/bin/bash
ls -lR /home/ > hw81.txt;  						    		     	 #1

awk '{if(sub(/newname/,"oldname")){print $0}}' /etc/shadow /etc/group /etc/passwd > hw82a.txt;   #2a

sed -i 's/oldname/newname/g' /etc/shadow /etc/group /etc/passwd > hw82b.txt;		         #2b
cat /etc/shadow /etc/group /etc/passwd > hw82b.txt

cat hw81.txt |tee temp| sed '/total/d'	> hw83.txt;					         #3

awk '{print $6 " " $7 " " $9}' hw81.txt > hw84.txt;						 #4

awk '{print $9}' hw81.txt | sed '/*[0-9]*/p' > hw85.txt;					 #5

awk '{print $9}' hw81.txt | sed '/*.*/p' > hw86.txt;						 #6





