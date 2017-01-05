#!/usr/bin/env bash

echo "Symlink dotfiles into place..."

THIS_DIR=$(pwd)
DOTFILES_DIR="$THIS_DIR/dotfiles"

for f in $DOTFILES_DIR/.*
do
	if [ -f $f ]; then
		FILENAME=$(basename $f)

		# Ask to overwrite if the file exists and is not a symlink to the right place
		if [ -e $HOME/$FILENAME ] && [ "$(readlink -- "$HOME/$FILENAME")" != $DOTFILES_DIR/$FILENAME ]; then
			echo "$FILENAME exists. Do you want to"
			select yn in "Overwrite" "Skip"; do
				case $yn in
					Overwrite ) rm $HOME/$FILENAME; break;;
					Skip ) break;;
				esac
			done
		fi

		if [ "$(readlink -- "$HOME/$FILENAME")" == $DOTFILES_DIR/$FILENAME ]; then
			echo "Already symlinked $FILENAME"
		elif [ ! -e $HOME/$FILENAME ]; then
			echo "Symlinking $FILENAME"
			ln -s $DOTFILES_DIR/$FILENAME $HOME/$FILENAME
		else
			echo "Leaving $FILENAME untouched"
		fi
	fi
done

echo "Done!"
