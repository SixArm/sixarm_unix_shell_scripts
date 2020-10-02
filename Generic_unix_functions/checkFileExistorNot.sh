
checkFileExistorNot()
{

# Parameters defined 
InputPath=$1
InputFilename=$2 

# Checking the entered parameters from user 
if [ -z "$InputPath" ]
then
    echo "Success : Path : $InputPath : Parameter is defined"
else
    echo "Fail    : Path : $InputPath : Parameter is not defined "    
fi 

if [ -z "$InputFilename" ]
then
    echo "Success : Path : $InputFilename : Parameter is defined"
else
    echo "Fail    : Path : $InputFilename : Parameter is not defined "    
fi 

# Checking the file exist at path or not 
if [  -f $InputPath/$InputFilename ] 
then
    echo "Success : File : $InputFilename  exist at following path : $InputPath"
else    
    echo "Fail    : File : $InputFilename  does not exist at following path : $InputPath"
fi       

}

# Calling function 
checkFileExistorNot '@path' '@filename'



