#!/bin/sh

./slow_job_report.py

if [ ! -f '/var/local/sysview/sys/sjr/EmptyJobsList'  ]
then
    cat /var/local/sysview/sys/sjr/userjobs_report.html | /usr/sbin/sendmail -t
fi
