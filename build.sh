!#/bin/bash

SITE_DIR="site"
SITE_NAME="martinmoen.com"

drush make $SITE_NAME.make $SITE_DIR
drush -r $SITE_DIR si --sites-subdir=$SITE_NAME --site-name=$SITE_NAME --db-url=sqlite://sites/$SITE_NAME/files/.ht.sqlite --account-pass=test
