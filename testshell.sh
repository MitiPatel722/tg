function usage() {
        echo -e "usage:\t`basename $0` [-b <report directory>] [-c <directory for java code>] [-d <source database] [-H <hive database>] [-o <source server>] [-p <parallelism>] [-q <queue>] <fileName>"
        echo -e "usage:\t`basename $0` -h"
        echo -e "\t\t\tthe file must contain on each line the name of a table you want to sqoop. If you want to sqoop 5 tables, you need 5 lines in your file"
        exit 0
}

tblname=$1
#[ "x$tblname" = "x" ] && usage

[ -f $tblname ] || usage
