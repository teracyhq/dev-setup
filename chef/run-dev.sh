#!/bin/bash

# install git first if not exist yet
# see: https://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script
if hash git 2>/dev/null; then
    echo "git was installed";
else
    echo "installing git...";
    apt-get update;
    apt-get install -qy git
fi


# rm -rm is just hacking, find a better way
rm -rf main-cookbooks/acme/Berksfile.lock # always install the latest

berks vendor -b main-cookbooks/acme/Berksfile --delete && rm -rf berks-cookbooks/acme

chown 1000:1000 main-cookbooks/acme/Berksfile.lock
