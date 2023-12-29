<?php

highlight_file(__FILE__);

$f = $_REQUEST{'filename#'};

if(preg_match('/php:\/\/filter.+?=/is', $f))
    die("Bad hacker!");

include($f.".module");
