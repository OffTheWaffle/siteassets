<?php
date_default_timezone_set('UTC');
$time = time();
$timebefore8hours = time()-28800;
echo "GMT date and time is " . date("Y-m-d G:i:sa",$time).'<br/>';
echo "Pacific date and time is before 8 hours " . date("Y-m-d G:i:sa",$timebefore8hours).'<br/>';

?>