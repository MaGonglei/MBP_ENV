#!/usr/bin/env bash
RemoteId=$1

RootDir=`dirname "$0"`
source $RootDir/remoteInfo.conf

tMsg=Msg$RemoteId
tKey=Key$RemoteId
tPort=Port$RemoteId
tRemote=Remote$RemoteId

echo ${!tMsg}
echo "ssh -i ${!tKey} -p ${!tPort} ${!tRemote}"
ssh -i ${!tKey} -p ${!tPort} ${!tRemote}
