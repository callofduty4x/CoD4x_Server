#!/usr/bin/php

<?php

$files = glob('./*.asm', GLOB_BRACE);
foreach($files as $file) {
    scanfile($file);
  //do your work here
}


function scanfile($filename)
{
    $file = file($filename, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

    $globals = array();

    foreach($file as $line)
    {
        $tokens = explode(" ", $line);
        $i = 0;
        for($i = 0; $i < count($tokens); ++$i)
        {
	    $tokens[$i] = preg_replace('/\s+/', '', $tokens[$i]);
        }
        if(empty($tokens[0]))
        {
            continue;
        }
        if($tokens[0][0] == ";")
	{
		continue;
	}
	if($tokens[0] == "global")
	{
		$globals[] = $tokens[1];
	}
    }



//And again
    foreach($file as $line)
    {
        $tokens = explode(" ", $line);
        $i = 0;
        for($i = 0; $i < count($tokens); ++$i)
        {
	    $tokens[$i] = preg_replace('/\s+/', '', $tokens[$i]);
        }
        if(empty($tokens[0]))
        {
            continue;
        }
        if($tokens[0][0] == ";")
	{
		continue;
	}
	if($tokens[0] == "extern")
	{
		foreach($globals as $glob)
		{
			if($tokens[1] == $glob)
			{
				echo "global & extern duplicated in file ".$filename." Symbol: ".$glob."!\n";
			}
		}
	}
    }

}
