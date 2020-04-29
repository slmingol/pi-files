#!/bin/bash

DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

echo "setting up raspbian.."

# install packages
source "$DIR/apt.sh"

# setup custom bash aliases
source "$DIR/bash/setup.sh"

# setup ssh
source "$DIR/ssh/setup.sh"

# setup firewall
source "$DIR/iptables.sh"

# setup fail2ban
source "$DIR/fail2ban/setup.sh"

# setup watchdog
source "$DIR/watchdog/setup.sh"

echo "all done."
