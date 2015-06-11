#!/bin/bash


# Redirect stdout ( > ) into a named pipe ( >() ) running "tee"
exec > >(tee /tmp/installlog.txt)
# Without this, only stdout would be captured
exec 2>&1


# Install Drush
# From Composer
echo -en "\032[35m Installing/updating Drush...\n"
composer global require drush/drush:7.*

# Add to $PATH
if grep -q 'export PATH="$HOME/.composer/vendor/bin:$PATH"' $HOME/.bashrc
then
    # code if found
    echo -en "\032[36m Composer vendor path is already included.\n"
else
    # code if not found
    echo -en "\033[33m Composer vendor path is not included yet.\n"
    echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> $HOME/.bashrc
    echo -en "\033[33m Done!\n"
fi

echo -en "\032[35m Reloading source..\n"
# Reload source
source $HOME/.bashrc

# Copy Runner
echo -en "\032[35m Get and copy runner...\n"
mkdir -p $HOME/workspace/.c9/runners
sudo wget https://raw.githubusercontent.com/GabrielGil/c9-drupal/master/Drupal7.run --output-document=$HOME/workspace/.c9/runners/Drupal7.run
