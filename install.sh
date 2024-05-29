#!/bin/sh
if hash realpath 2>/dev/null
then
echo "NEED realpath"
exit
fi
mkdir $@
git clone https://github.com/Homebrew/brew $@/Homebrew
ln -s $(realpath $@/Homebrew/bin/brew) $(realpath $@/bin/brew)
echo "Homebrew now installed under $(realpath $@), add $(realpath $@)/bin:$(realpath $@)/sbin to PATH to use Homebrew"
echo "IMPORTANT: DO NOT MOVE $@, DO NOT CHANGE $@'S OR ANY OF IT'S PARENT DIRECTORIES' NAME!"
