#!/usr/bin/php

<?php


$lines = file("iw3mp_entrypoints.txt", FILE_IGNORE_NEW_LINES);

$split = array();

foreach($lines as $line)
{
    $split = preg_split("/[\s]+/", $line, 5);
    $procname = $split[0];
    $entrypoint = hexdec($split[2]);
    $length = hexdec($split[3]);
    printf("\t\t{ %s, 0x%x, %d},\n", $procname, $entrypoint, $length);
}




?>
