#!/bin/bash
DOWNLOAD_FOLDER=/tmp
DOWNLOAD_FILE=$DOWNLOAD_FOLDER/awscliv2.zip

# cleanup
cleanup() {
    if test -d $DOWNLOAD_FOLDER/aws; then
        rm -rf $DOWNLOAD_FOLDER/aws
    fi

    if test -e $DOWNLOAD_FILE; then
        rm $DOWNLOAD_FILE
    fi
}

cleanup
curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o $DOWNLOAD_FILE
unzip $DOWNLOAD_FILE -d $DOWNLOAD_FOLDER
$DOWNLOAD_FOLDER/aws/install
cleanup
