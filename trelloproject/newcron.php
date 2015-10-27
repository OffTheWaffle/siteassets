<?php
session_start();
date_default_timezone_set('UTC');
$microtime = microtime();
$time = time();
$timebefore8hours = time()-28800;
echo date('Y-m-d G:i:s',$timebefore8hours);
/*if(!isset($_SESSION['houlymic']))
{
    $_SESSION['hourlymic'] = $microtime;
    $_SESSION['hourlytime'] = $time;
}
sleep(5);
if($_SESSION['hourlymic']==$microtime || (($_SESSION['hourlytime']+120)<$time)) {
    $_SESSION['hourlymic'] = microtime();
    $_SESSION['hourlytime'] = $time;
    mail('thenitaum@gmail.com', 'Test cron', date('Y-m-d G:i:s', $timebefore8hours) . 'microtime : ' . microtime() . ' new cron initiate from offthewaffle.com.');
}*/
if(!isset($_SESSION['hourlymic']))
{
    $_SESSION['hourlymic'] = $microtime;
}
if($_SESSION['hourlymic'] == $microtime)
{
    mail('thenitaum@gmail.com', 'Test cron', date('Y-m-d G:i:s', $timebefore8hours) .' micro ses : '.$_SESSION['hourlymic']. 'microtime : ' . microtime() . ' new cron initiate from offthewaffle.com.');
    sleep(5);
    $_SESSION['hourlymic'] = null;
    //reset($_SESSION['hourlymic']);
    //$_SESSION['hourlymic'] = 0;
}
?>