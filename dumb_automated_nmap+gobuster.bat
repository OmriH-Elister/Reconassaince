#!/bin/bash
for i in $(cat domain_names); do nmap -p- -T4 $i -vvv -oA scan_$i && gobuster dir -u $i -r -b 401,402,403,404,405 -w /usr/share/wordlists/seclists/Discovery/Web-Content/raft-medium-words.txt -vv -o  $i_go_bust.txt ;done;
