#!/bin/sh

export PATCHES_DIR=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
export SOURCE_DIR=$(cd $PATCHES_DIR/../../.. && pwd)

echo "PATCHES_DIR=$PATCHES_DIR"
echo "SOURCE_DIR=$SOURCE_DIR"

function print_patches_list() {
    cd $PATCHES_DIR
    find * | egrep "(patch|diff)$"
}

function print_patches_list_reverse() {
    rev_list=""
    for i in $(print_patches_list)
    do
        if [ "x" = "x$rev_list" ]; then
            rev_list=$i
        else
            rev_list="$rev_list $i"
        fi
    done

    echo $rev_list
}


function apply_patches() {
    list=$(print_patches_list)

    for i in $list
    do
        cd $SOURCE_DIR/$(dirname $i)
        git apply $PATCHES_DIR/$i
    done
}

function apply_patches_reverse() {
    list=$(print_patches_list_reverse)

    for i in $list
    do
        cd $SOURCE_DIR/$(dirname $i)
        git apply --reverse $PATCHES_DIR/$i
    done
}


if [ "x$1" = "x" ]; then
    apply_patches
elif [ "$1" = "reverse" ]; then
    apply_patches_reverse
else
    echo "$0 [reverse]"
fi
