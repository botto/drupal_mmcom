#!/bin/bash

SITE_DIR="../build"
SITE_NAME="martinmoen.com"
DRUSH_CMD="drush -y -vv"
SCRIPT_PWD=`pwd`
WWW_GROUP="_www"
PROFILE="martinmoencom"

if [ -d $SITE_DIR ]; then
  chmod -R 777 $SITE_DIR
  rm -rf $SITE_DIR
fi
if [ $? -eq 0 ]; then
  $DRUSH_CMD make $SITE_NAME.make $SITE_DIR

  if [ $? -eq 0 ]; then
    cd $SITE_DIR
    $DRUSH_CMD si $PROFILE --sites-subdir=$SITE_NAME --site-name=$SITE_NAME --db-url=sqlite://sites/$SITE_NAME/files/.ht.sqlite --account-pass=test
    chgrp -R $WWW_GROUP sites/$SITE_NAME/files
    chmod -R g+wrx sites/$SITE_NAME/files

    if [ $? -eq 0 ]; then
      cd $SCRIPT_PWD
      php generate_alias.php -d=`pwd` -n=$SITE_NAME

      echo "Build Complete"
    fi
  fi
fi
