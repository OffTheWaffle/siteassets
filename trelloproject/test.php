<?php
require("logclass.php");
// Logging class initialization
$log = new Logging();
// set path and name of log file (optional)
$log->lfile('mylog.txt');
// write message to the log file
$log->lwrite('cron executed');
// close log file
$log->lclose();
mail("thenitaum@gmail.com","testing cron",date("y-m-d h:i:s"));
?>