#!/usr/bin/env bash
#远程的相对路径需要用""包裹起来
RemoteId=$1
Source=$2
Destination=$3
FromRemote=$4



RootDir=`dirname "$0"`
source $RootDir/remoteInfo

tMsg=Msg$RemoteId
tKey=Key$RemoteId
tPort=Port$RemoteId
tRemote=Remote$RemoteId
 
echo ${!tMsg}
if [ "x$FromRemote" == "x" ]
then
    scp -i ${!tKey} -P ${!tPort} $Source ${!tRemote}:$Destination
else
    scp -i ${!tKey} -P ${!tPort} ${!tRemote}:$Source $Destination
fi