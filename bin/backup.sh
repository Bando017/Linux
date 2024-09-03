#!/bin/bash
tar cvzf /backup/backup_$(date +%m%d_%H%M%S).tar.gz . > /backup/backup.log 2>&1
if [ $? -eq 0 ] ; then           
	echo "[  OK  ] backup success"
else
	echo "[  FAIL ] backup error"
fi
