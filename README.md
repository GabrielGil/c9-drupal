# c9-drupal
Drupal development with debugging tools made easy on @c9

## Quick install
Run this..    
``` sh
curl -L https://raw.githubusercontent.com/GabrielGil/c9-drupal/master/install.sh | bash
```

## Known issues
#### Drush is not properly passing the options to PHP.
This line is not making effect from Drush.
https://github.com/GabrielGil/c9-drupal/blob/master/Drush7.run#L15
Waiting for a better explanation or reason.

**Solution**    
Set `xdebug.remote_enable=1` directly on `/etc/php5/cli/php.ini`.

#### Debugging is really limited
It is not working more than on the fisrt request, and only on certain .php files, not on the whole instalation. This bugs are also appearing in a similar way with the default php built-in server but in order to run Drush with clean url's and certain configuration Drupal need, we need Drush, or a full webserver (Apache2, NGINX), however @C9 genius team only got xcode working on PHP-Built-in.

For the time being, the @C9 engineers are working 24/7 (my doubts here) to get the debugger finally working. Let's keep on waiting, eventhough it has been 2 weeks already. They're really busy tho.
