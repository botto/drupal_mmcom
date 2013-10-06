#!/bin/bash

SITE_DIR="site"
SITE_NAME="martinmoen.com"
DRUSH_CMD="drush -y"

$DRUSH_CMD make $SITE_NAME.make $SITE_DIR
cd $SITE_DIR
$DRUSH_CMD si --sites-subdir=$SITE_NAME --site-name=$SITE_NAME --db-url=sqlite://sites/$SITE_NAME/files/.ht.sqlite --account-pass=test
