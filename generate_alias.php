<?php

$opts = getopt("d:n:e::");

$replace_name = array('?:root_wd', '?:site_name');
$replace_val = array($opts['d'], $opts['n']);
$env = 'local';
if (!empty($opts['e'])) {
  $env = $opts['e'];
}

$new_alias = str_replace($replace_name, $replace_val, file_get_contents('init_alias.tpl.php'));
file_put_contents($env . '.aliases.drushrc.php',  $new_alias);
