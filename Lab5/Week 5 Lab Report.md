# Lab Report 5
## Jonathan Yunawan
---
### Task
A lab report I really liked doing was the [grading script](https://github.com/jyunawan/grader-review-jyunawan) from Lab 6. I started by cloning the given repository and doing some basic things such as checking if the file exists or if the file compiled properly. After running the tester and getting the JUnit output and error output is when this Lab became a bit harder and what made it really interesting to me.  
  
I found it pretty hard to get the result line and extract the numbers from it. I ended up searching the internet on how to do this and found ```cut``` to be a good option. I then checked different failing outputs and figured out that they had a line with ```Tests run:``` in common, so I searched for that. I also realized that they followed a similar format, so I used ```cut``` to extract the tests run and the number of failures. This worked for failing cases but with non failing cases I realized that the output line was different, so I modified it slightly to be able to handle passing cases too. I then did some formatting with the output and that was my grading script. I also made the option to change the file being tested and the tests file for slightly more customizability.  
  
This is my working script:  
```bash
CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar' # Change this to get the path to the junit and hamcrest
FILE='ListExamples' # Change this to change the file to test
TESTFILE='TestListExamples' # Change this to change the tester

rm -rf student-submission
git clone $1 student-submission
echo 'Finished cloning'

cd student-submission

if [[ -e ${FILE}.java ]]
    then
        echo  ${FILE}'.java found'
else
    echo  ${FILE}'.java not found'
    exit
fi

cp ../$TESTFILE.java ./
cp -r ../lib ./

javac -cp $CPATH *.java 2>error-output.txt
if [[ $? -eq 0 ]]
    then 
        echo 'Compile succeeded.'
else
    echo 'Compile error.'
    cat error-output.txt
    exit
fi    

java -cp $CPATH org.junit.runner.JUnitCore $TESTFILE>output.txt 2>error-output.txt

LINECOUNT=`grep -c '' output.txt`
RESULTLINE=`grep 'Tests run:' output.txt`

if [[ RESULTLINE -eq '' ]] 
    then
        RESULTLINE=`grep 'OK' output.txt`
        TESTSRUN=`echo $RESULTLINE | cut -d'(' -f2 | cut -d' ' -f1`
        FAILURES=0
else
    TESTSRUN=`echo $RESULTLINE | cut -d, -f1 | cut -d' ' -f3`
    FAILURES=`echo $RESULTLINE | cut -d, -f2 | cut -d' ' -f3`
fi

TESTSPASSED=$(($TESTSRUN-$FAILURES))

if [[ FAILURES -eq 0 ]]
    then 
        echo ${TESTSPASSED}'/'${TESTSRUN}' tests passed'.
else 
    echo ${TESTSPASSED}'/'${TESTSRUN}' tests passed'.
    LINES=$(($LINECOUNT-4))
    head -n $LINES output.txt
fi
```  
  
After attending the morning lecture on Wednesday of Week 9, I wanted to change my script slightly from an idea I got from Joe. He tried to use ChatGPT to make a grading script that would calculate letter grades, but ChatGPT failed. I wanted to try and do that, and when thinking about it, it wouldn't be that hard to do. It would just be some simple calculations, so I added this to the bottom of my existing code:  
```bash
SCORE=`printf %.2f $(echo "$TESTSPASSED/$TESTSRUN*100"|bc -l)`

if (( $(echo "$SCORE >= 90" |bc -l) ))
    then
        echo "You got an A."
elif (( $(echo "$SCORE >= 80" |bc -l) ))
    then
        echo "You got a B."
elif (( $(echo "$SCORE >= 70" |bc -l) ))
    then
        echo "You got a C."
elif (( $(echo "$SCORE >= 60" |bc -l) ))
    then
        echo "You got a D."
else
    echo "Unfortunately you failed."
fi
```  
It was unsurprisingly not as simple as I thought. The score variable is pretty simple, the ```printf %.2f``` simply makes it 2 decimal places. Then the next part outputs the thing we want to calculate and takes that output as an input into ```bc```, which does maths. The ```-l``` makes this load the standard maths library. Then with the ```if``` statements, we cannot just use ```-ge``` since the number is a floating point number. Instead, I once again use ```bc``` to help me. The reason I use the normal brackets instead of square brackets is that ```bc``` outputs ```1``` or ```0```, which can be processed as ```true``` or ```false``` by the normal brackets. Everything else is straightforward, set a grade threshold and output what letter grade will be give.  
  
### Reflection  
I didn't think I would learn much from this class, I thought it would cover the very basics of using the command line but this class really helped. My main takeaway would probably be the use of ```.sh``` files and the use of github pages to make websites. Although github pages was something I was previously aware of, I didn't really know how to use it or how it works. The use of shell files is something I have already started using in my CSE12 class, although it is for some simple things such as compiling files or running a style checker, it is still really helpful. Learning how to use git from the commandline is also useful, although it is not something I currently use now since I have to reauthenticate git whenever I open a new project in Visual Studio Code, making it much more convenient to just use Github Desktop.  
  
#### Notes  
Hi! To whoever is grading this, I hope you had a great day. I know there will be no resubmission on this Lab Report, but is it possible to still get notes on it so I could change it if there is anything missing. Thanks!