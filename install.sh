#!/bin/bash


# Redirect stdout ( > ) into a named pipe ( >() ) running "tee"
exec > >(tee /tmp/installlog.txt)
# Without this, only stdout would be captured
exec 2>&1


# Install Drush
# From Composer
composer global require drush/drush:7.*
# Add to $PATH
if grep -q 'export PATH="$HOME/.composer/vendor/bin:$PATH"' $HOME/.bashrc
then
    # code if found
    echo "Composer vendor path is already included."
else
    # code if not found
    echo -en "\033[36m Composer vendor path is not included yet.\n"
    echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> $HOME/.bashrc
    echo "Done!"
fi
# Reload source
source $HOME/.bashrc

# Copy Runner
mkdir -p $HOME/workspace/.c9/runners
sudo wget https://raw.githubusercontent.com/GabrielGil/c9-drupal/master/Drupal7.run --output-document=$HOME/workspace/.c9/runners/Drupal7.run
