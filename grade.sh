CPATH=".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar"

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests

if [[ -f student-submission/ListExamples.java ]]
then
    echo "File Found"
else 
    echo "File Not Found"
    exit
fi

cp -r student-submission/*.java grading-area
cp -r lib grading-area
cp TestListExamples.java grading-area

cd grading-area
javac -cp $CPATH *.java 

if [[ $? -eq 0 ]]
then 
    echo "Compile Success"
else
    echo "Compile Fail"
    exit 1
fi


grep "Failures: 1" output.txt > grep.txt
if [[ $? -eq 0 ]]
then
    echo "0/1"
else
    echo "1/1"
    exit
fi