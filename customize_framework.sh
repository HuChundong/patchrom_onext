#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

GIT_APPLY=$PORT_ROOT/tools/git.apply

SEP_FRAME="framework2.jar.out"
TMP_FILE=$BUILD_OUT/tmp.smali

function appendSmaliPart() {
	cd overlay
    for file in `find $1/smali -name *.part`
    do
        filepath=`dirname $file`
        filename=`basename $file .part`
        dstfile="../out/$filepath/$filename"
        cat $file >> $dstfile
    done
	cd ..
}

if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework2.jar.out
    for file2 in `find framework2.jar.out -name *.smali`; do
            file=${file2/framework2.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    rm -rf "$BUILD_OUT/framework/smali/com/google/android/mms"
    # move some smali to create a separate $SEP_FRAME.jar
    # including: smali/miui smali/android/widget
    #mkdir -p "$BUILD_OUT/$SEP_FRAME/smali"
    #rm -rf $BUILD_OUT/$SEP_FRAME/smali/miui
    #mv "$BUILD_OUT/framework/smali/miui" "$BUILD_OUT/$SEP_FRAME/smali"

    PATCH_FILE=$BUILD_OUT/framework/smali/com/android/internal/telephony/gsm/GsmDataConnectionTracker\$Injector.smali
    sed "s/invoke-static {}, Lcom\/android\/internal\/telephony\/gsm\/GsmDataConnectionTracker;->getPolicyDataEnabled()Z/invoke-virtual {p0}, Lcom\/android\/internal\/telephony\/gsm\/GsmDataConnectionTracker;->getPolicyDataEnabled()Z/g" $PATCH_FILE > $TMP_FILE
    cp $TMP_FILE $PATCH_FILE
    rm $TMP_FILE
fi

if [ $2 = "$BUILD_OUT/framework2" ]
then
    # remove all files at out/framework1 those exist in framework.jar.out
    for file2 in `find framework.jar.out -name *.smali`; do
            file=${file2/framework.jar.out/$BUILD_OUT\/framework2}
            echo "rm file: $file"
            rm -rf "$file"
    done

    cp -rf "$BUILD_OUT/framework_miui/smali/com/google/android/mms" "$BUILD_OUT/framework2/smali/com/google/android"
    #mv "$BUILD_OUT/$SEP_FRAME/smali/miui/"  "$BUILD_OUT/framework2/smali/miui"

    cp framework2/framework2.part $BUILD_OUT
    cd $BUILD_OUT
    $GIT_APPLY framework2.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: Settings patch fail"
        exit 1
    done
fi

if [ $2 = "$BUILD_OUT/android.policy" ];then
    appendSmaliPart "android.policy"
fi
