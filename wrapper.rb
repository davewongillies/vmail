#!/bin/bash
echo "selecting mailbox $1"
ruby lib/client.rb select_mailbox "$1"
shift
echo "search $@"
ruby lib/client.rb search $@ > out
vim -S viewer.vim out

