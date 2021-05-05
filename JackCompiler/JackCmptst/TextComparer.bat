@echo off
cd %0\..
java -classpath "%CLASSPATH%;" TextComparer %1 %2
