#!/bin/bash

COMMAND=$1
$COMMAND tc-tiny kmod-sched kmod-sched-cake kmod-sched-connmark kmod-sched-ipset
echo '-----------------------------------------------'
