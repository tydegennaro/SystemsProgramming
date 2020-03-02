#!/bin/bash
# A short bash script to grade the Multsum Bash program.
# Assumes that the Bash script is in the current directory and executable.

EXEC=./multsum.sh

if [ ! -e ${EXEC} ]; then
    echo "Script ${EXEC} does not exist."
    exit
elif [ ! -x ${EXEC} ]; then
    echo "Script ${EXEC} is not executable."
    exit
fi

echo "Testing input 1"
${EXEC} 100 200 7 2>&1 | diff multsumOutput.1 -
echo "Testing input 2"
${EXEC} 123456789 123546789 1000 2>&1 | diff multsumOutput.2 - 
echo "Testing input 3"
${EXEC} 100 20a 5 2>&1 | diff multsumOutput.3 -
echo "Testing input 4"
${EXEC} -100000 100000 13 2>&1 | diff multsumOutput.4 -
echo "Testing input 5"
${EXEC} 100 2>&1 | diff multsumOutput.5 -
echo "Testing input 6"
${EXEC} 100 500 -3 2>&1 | diff multsumOutput.6 -
echo "Testing input 7"
${EXEC} 5000 10000 10 2>&1 | diff multsumOutput.7 -