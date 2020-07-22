#!/bin/bash 

#now_time=$(date)

#echo "now_time"



#tar -cvf /tmp/m_log"$now_time".tar /tmp/m_log
tar -cvf /tmp/m_log.tar /tmp/m_log

#az storage blob upload     --account-name test1groupmyblob     --container-name test1groupmycontainer     --name m_log"$now_time".tar    --file m_log"$now_time".tar   --auth-mode key


az storage blob upload     --account-name test1groupmyblob     --container-name test1groupmycontainer     --name m_log.tar    --file /tmp/m_log.tar   --auth-mode key

az storage blob upload     --account-name test1groupmyblob     --container-name test1groupmycontainer     --name m_log.txt    --file /tmp/m_log.txt   --auth-mode key

az storage blob list     --account-name test1groupmyblob     --container-name  test1groupmycontainer     --output table     --auth-mode key

cat /tmp/m_log/logs/latest.log >> /tmp/m_log.txt
