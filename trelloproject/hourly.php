<?php
    include_once('customfunctions.php');
    $trello = new \Trello\Trello($consumer_key, $consumer_secret, $token);

    date_default_timezone_set('UTC');
    $time = time();
    $timebefore8hours = time()-25200;
    $currentHour = date("G",$timebefore8hours);

    /********** Shop1, Shop2 and Shop3 from 08:57 to 12:57 **********/
    if($currentHour>=8 && $currentHour<=18) {
        //mail('thenitaum@gmail.com','Hourly Task Timing',date('Y-m-d G:i:s',$timebefore8hours).' , Time when executed, as per GMT-8.');
       // mail('rahulserver@gmail.com','Hourly Task Timing',date('Y-m-d G:i:s',$timebefore8hours).' , Time when executed, as per GMT-8.');
        //mail('omer@offthewaffle.com','Hourly Task Timing',date('Y-m-d G:i:s',$timebefore8hours).' , Time when executed, as per GMT-8.');
        // objTrello - srcboard - srclist - shopboard - labelname(shopname or weekday) - shoplist //
        copyCardsNoDuplicate($trello, $board_ids['source'], 'BOH Refresh/Status Quo', $board_ids['shop1'], 'shop1', 'BOH');
        copyCardsNoDuplicate($trello, $board_ids['source'], 'FOH Refresh/Status Quo', $board_ids['shop1'], 'shop1', 'FOH');
        copyCardsNoDuplicate($trello, $board_ids['source'], 'BOH Refresh/Status Quo', $board_ids['shop2'], 'shop2', 'BOH');
        copyCardsNoDuplicate($trello, $board_ids['source'], 'FOH Refresh/Status Quo', $board_ids['shop2'], 'shop2', 'FOH');
        copyCardsNoDuplicate($trello, $board_ids['source'], 'BOH Refresh/Status Quo', $board_ids['shop3'], 'shop3', 'BOH');
        copyCardsNoDuplicate($trello, $board_ids['source'], 'FOH Refresh/Status Quo', $board_ids['shop3'], 'shop3', 'FOH');
    }
?>