CPATH=".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar"

cp -r student-submission/*.java grading-area
cp -r lib grading-area
cp TestListExamples.java grading-area

javac -cp $CPATH *.java 

