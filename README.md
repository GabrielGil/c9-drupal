# c9-drupal
Drupal development with debugging tools made easy on @c9

## Quick install
Run this..    
``` sh
curl -L https://raw.githubusercontent.com/GabrielGil/c9-drupal/master/install.sh | bash
```

## Pre-requisites
**Drush on the $PATH.**    
One way to do install Drush7 globally on your c9 environment is by running this lines of code.
``` bash
composer global require drush/drush:7.* && echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> $HOME/.bashrc && source $HOME/.bashrc
```
