#! /bin/bash

# Download the sources & compile the DE ( ~ 20 minutes )
./compile_xfce.sh

# Copy the xfce4 folder into .config so the DE is usable
cp -rv ./xfce4 ~/.config/

# Drop do_switch.sh into ~/bin
cp ./do_switch.sh ~/bin/do_switch.sh

# Append the do_switch call to the .profile
cat profile_tail >> ~/.profile

# xfce should switch on on next login.


