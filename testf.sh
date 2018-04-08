function popStack(){
	: ${1?'Missing stack name'}
}

id=$1	# this id should be unique betwween all the instances of doSqoop
myVariable=tableFor_$id
echo "$myVariable"
#popStack myVariable 

myFile=$1
[ "x$myFile" = "x" ] && usage
[ -f $myFile ] || usage

listOfTables=( `cat $myFile`)
initialSizeStack=${#listOfTables[@]}
pointerStack=0	# to know which element must be fetched next
pointerStackFile=.sqoopTables_pointerStack_$$
echo 0 > $pointerStackFile
 
