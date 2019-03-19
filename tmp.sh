#!/bin/sh

print_cdd_logo()
{
    echo '###################################################################'
    echo '######    ##     #####     ########  ####         ###  ######  ####'
    echo '####  ######  ###  ###  ###  ######  ###   ##########  ######  ####'
    echo '####  ######  ###  ###  ###  ######  ####    ########  ##  ##  ####'
    echo '####  ######  ###  ###  ###  ######  ###   #####   ##  ##  ##  ####'
    echo '######    ##     #####     ########  ####         ####   #    #####'
    echo '################################################  #################'
}

ensure_no_cddbatch_jvm_running() 
{
    no_of_running_jvm=`ps -ef | grep 'java CddBatch' | wc -l`
    if [ $no_of_running_jvm != 1 ]; then
        echo 'CddBatch Java component is already in running state!'
        exit 1
    fi
}

#--- validation starts here ---
ensure_no_cddbatch_jvm_running
#--- validation ends here ---

#--- Main script starts here ---
print_cdd_logo

java CddBatch $1
#--- Main script ends here ---


public class CddBatch {
    public static void main(String[] args) throws Exception {
        Thread.sleep(Integer.parseInt(args[0]));
    }
}
