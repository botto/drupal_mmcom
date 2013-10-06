<?php

$aliases["?:site_name"] = array(
  'root' => '?:root_wd',
  'uri' => 'local.?:site_name',
  'path-aliases' => array(
    '%files' => '?:root_wd/sites/?:site_name/files',
  ),
);
