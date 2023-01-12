# Lab Report 1 - Remote Access and Filesystem
## Jonathan Yunawan
---
# 1. Installing VS
![Visual Studio Code](./images/Lab_1_VS_Code.png)  
Prior to this class, I already had Visual Studio Code installed, so I did not have to go through the installation process again. As you can see, the colors in my Visual Studio Code looks slightly different, as I have downloaded a custom theme and instead of using the Windows shell for my console, I am using bash.

# 2. Remotely Connecting
![Unsuccessful Connection](./images/Lab_1_Unsuccessful_Connection.png)  
During the lab, I count not connect to the server. When I tried creating a password, despite meeting all the requirements, it said that my password did not meet the requirements. Since I was unable to connect on my own laptop, I shared with a classmate first. Nearing the end of the class, I was able to reset my password but I was still unable to connect to the server.
![Successful Connection](./images/Lab_1_Successful_Connection.png)  
After the lab, I tried connecting to the server again. I was able to successfully connect to the server with the command `ssh.exe cs15lwi23acm@ieng6.ucsd.edu`. The reason I am using "ssh.exe" instead of "ssh" because I am not using the default terminal on Visual Studio Code but instead the fish shell.

# 3. Trying Commands 
After successfully connecting to the server, I tried out a bunch of commands.
![Trying out Commands](./images/Lab_1_Commands_1.png)  

The first one I tried was `ls` and it only showed one file in the current directory. I then tried going into the parent directory with `cd ~` but when I did `ls` again, it was the same directory. I then tried accessing someone else's directory but I did not have the permission to do so. I then tried doing `ls -a` in my own directory and it showed a lot more files as the `-a` shows all entries and does not ignore the entries starting with `.`. 
![Trying out Commands](./images/Lab_1_Commands_2.png)  
I then did `ls -lat` which shows a lot more information about the items in that directory.
![Trying out Commands](./images/Lab_1_Commands_3.png)  
After that I tried the `cp` command to copy a file called `hello.txt` from another directory but I did not have the permission to do so. I also tried using the `cat` command on this file but I also did not have the permission to do so.
![Trying out Commands](./images/Lab_1_Commands_4.png)  
Lastly I terminated the connection to the server with the `exit` command.