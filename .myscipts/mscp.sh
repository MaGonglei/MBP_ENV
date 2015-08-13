#!/usr/bin/env bash
#远程的相对路径需要用""包裹起来
RemoteId=$1
Source=$2
Destination=$3
FromRemote=$4

RootDir=`dirname "$0"`
source $RootDir/remoteInfo.conf

tMsg=Msg$RemoteId
tKey=Key$RemoteId
tPort=Port$RemoteId
tRemote=Remote$RemoteId
 
echo ${!tMsg}
if [ "x$FromRemote" == "x" ]
then
    echo "scp -i ${!tKey} -P ${!tPort} -r $Source ${!tRemote}:$Destination"
    scp -i ${!tKey} -P ${!tPort} -r $Source ${!tRemote}:$Destination
else
    echo "scp -i ${!tKey} -P ${!tPort} -r  ${!tRemote}:$Source $Destination"
    scp -i ${!tKey} -P ${!tPort} -r  ${!tRemote}:$Source $Destination
fi
