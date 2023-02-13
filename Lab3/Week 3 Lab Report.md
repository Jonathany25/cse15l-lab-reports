# Lab Report 3
## Jonathan Yunawan
---
# Researching Commands - ```grep```
From the [wikibooks](https://en.wikibooks.org/wiki/Grep) website, grep is defined as a Unix utility that searches through either information piped to it or files in the current directory. In this case, I will be searching through a text files to demonstrate its usage. I will also be using this directory with text files called [written_2](https://github.com/jyunawan/docsearch/tree/main/written_2).

The basic functionality of grep is ```grep [text to search] [file]```. It will then return the line that matches the text we are searching for. Let's try looking through a file called fruits.txt with the lines:  
```
Oranges are sometimes sweet, sometimes sour.
Which came first, the color orange or the fruit orange?
Bananas are yellow.
The bananas are sweet.
Apples are red or green.
Some apples are sweet, some apples are sour.
```  
If we were looking for the word banana, we would do ```grep Bananas fruits.txt```. It would then output the line: ```Bananas are yellow.```  
  
## Command Line Option: ```-i```
This command line option allows us to ignore the case of the word.  
  
Command: ```grep -i bananas fruits.txt```  
Output:  
```
Bananas are yellow.  
The bananas are sweet.
```  
  
Command: ```grep -i apple fruits.txt```  
Output:  
```
Apples are red or green.
Some apples are sweet, some apples are sour.
```  

This command would be useful if we were testing user input, since sometimes we might not want it to be case specific and users don't always follow instructions. This could also be useful in general for counting the number of lines a word appears in text since it may be at the start or middle of the sentence, so the capitalization may vary.  
  
## Command Line Option: ```-v```
This command line option inverts the result of the search.

Command: ```grep -v bananas fruits.txt```  
Output:  
```
Oranges are sometimes sweet, sometimes sour.
Which came first, the color orange or the fruit orange?
Bananas are yellow.
Apples are red or green.
Some apples are sweet, some apples are sour.
```  
  
Command: ```grep -iv bananas fruits.txt```  
Output:  
```
Oranges are sometimes sweet, sometimes sour.
Which came first, the color orange or the fruit orange?
Apples are red or green.
Some apples are sweet, some apples are sour.
```  
  
This command would be useful if each line was its own entry and we were trying to find the entries that did not contain a certain word. As can be seen in the second example, we can combine different command line options. In the second one, ```bananas``` is ignored regardless of the case. So although the line with ```Bananas``` can be seen in the first example, it isn't in the second one.  
  
## Command Line Option: ```-l```
This line outputs the matching file instead of the matching line. In this example, we will be using the file directory linked above, called ```written_2```.  
  
Command: ```grep -l Lucayans written_2/travel_guides/berlitz2/*.txt```  
Output:  
```
written_2/travel_guides/berlitz2/Bahamas-History.txt
```  
  
Command: ```grep -rl Lucayans written_2```  
Output:  
```
written_2/travel_guides/berlitz2/Bahamas-History.txt
```  
  
Although these two might have the same outputs, the first one only searches through the text files in a directory while the second one recursively searches through all the files in a given directory, in this case, ```written_2```. The ```-l``` is useful in a large directory where not only does the matching line matter, but also the file in which the line is in.
  
## Command Line Option: ```-n```
This line adds the line number in front of the matching line.  
  
Command: ```grep -in banana fruits.txt```  
Output:  
```
3:Bananas are yellow.
4:The bananas are sweet.
```  
  
Command: ```grep -in apple fruits.txt```  
Output:  
```
5:Apples are red or green.
6:Some apples are sweet, some apples are sour.
```  
  
This one is more useful in really long files. Instead of having to look one by one where the search result is, we can just see from the line number. In a short file such as ```fruits.txt```, it does not really matter, but it is demonstrated using this for easier visibility.

## Command Line Option: ```-o```
This line outputs the matched parts of a matching line.  
  
Command: ```grep -ino banana fruits.txt```  
Output:  
```
3:Banana
4:banana
```  
  
Command: ```grep -ino orange fruits.txt```  
Output:  
```
1:Orange
2:orange
2:orange
```  
  
Even though it might seem useless as it just tells us what we already know, it tells us whether the word is capitalized or not, and more importanly, instead of just the number of matching lines, we can use this and ```wc``` to find the number of times something occurs.  
  
## Uses for different Command Line Options
[numOfOccurences.sh](https://github.com/jyunawan/cse15l-lab-reports/tree/main/Lab3/numOfOccurences.sh):  
```
grep -io $1 $2 > $1_grep_result.txt
echo "Occurences:"
wc -l $1_grep_result.txt
```  
Usage: ```numOfOccurences.sh [phrase to search] [file to search in]```  
  
[locationInDirectory.sh](https://github.com/jyunawan/cse15l-lab-reports/tree/main/Lab3/locationInDirectory.sh):  
```
grep -rl $1 $2 | xargs -d"\n" grep -n $1
```  
Usage: ```locationInDirectory.sh [phrase to search] [directory to search in]``` 
Extra Notes: In this case, ```xargs``` takes the output from the first command and uses it as a input for the second command. The ```-d``` changes the delimiter from a default of space into ```\n``` as the output of grep is separated by ```\n```.

