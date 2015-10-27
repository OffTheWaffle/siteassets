<?php
    include_once('customfunctions.php');
    $trello = new \Trello\Trello($consumer_key, $consumer_secret, $token);

    date_default_timezone_set('UTC');
    $time = time();
    $timebefore8hours = time()-28800;
    $currentHour = date("G",$timebefore8hours);

    //mail('thenitaum@gmail.com','Daily Task Timing',date('Y-m-d G:i:s',$timebefore8hours).' , Time when executed, as per GMT-8.');
    //mail('rahulserver@gmail.com','Daily Task Timing',date('Y-m-d G:i:s',$timebefore8hours).' , Time when executed, as per GMT-8.');
    //mail('omer@offthewaffle.com','Daily Task Timing',date('Y-m-d G:i:s',$timebefore8hours).' , Time when executed, as per GMT-8.');
    /********** Shop1 **********/
    // objTrello - srcboard - srclist - shopboard - labelname(shopname or weekday) - shoplist //
    copyCardsNoDuplicate($trello,$board_ids['source'],'BOH Clean To Close',$board_ids['shop1'],'shop1','BOH');
    copyCardsNoDuplicate($trello,$board_ids['source'],'FOH Clean To Close',$board_ids['shop1'],'shop1','FOH');
    copyCardsNoDuplicate($trello,$board_ids['source'],'Opening',$board_ids['shop1'],'shop1','Opening');
    copyCardsNoDuplicate($trello,$board_ids['source'],'BOH Cleaning',$board_ids['shop1'],'weekday','BOH');
    copyCardsNoDuplicate($trello,$board_ids['source'],'FOH Cleaning',$board_ids['shop1'],'weekday','FOH');

    /********** Shop2 **********/
    // objTrello - srcboard - srclist - shopboard - labelname(shopname or weekday) - shoplist //
    copyCardsNoDuplicate($trello,$board_ids['source'],'BOH Clean To Close',$board_ids['shop2'],'shop2','BOH');
    copyCardsNoDuplicate($trello,$board_ids['source'],'FOH Clean To Close',$board_ids['shop2'],'shop2','FOH');
    copyCardsNoDuplicate($trello,$board_ids['source'],'Opening',$board_ids['shop2'],'shop2','Opening');
    copyCardsNoDuplicate($trello,$board_ids['source'],'BOH Cleaning',$board_ids['shop2'],'weekday','BOH');
    copyCardsNoDuplicate($trello,$board_ids['source'],'FOH Cleaning',$board_ids['shop2'],'weekday','FOH');

    /********** Shop3 **********/
    // objTrello - srcboard - srclist - shopboard - labelname(shopname or weekday) - shoplist //
    copyCardsNoDuplicate($trello,$board_ids['source'],'BOH Clean To Close',$board_ids['shop3'],'shop3','BOH');
    copyCardsNoDuplicate($trello,$board_ids['source'],'FOH Clean To Close',$board_ids['shop3'],'shop3','FOH');
    copyCardsNoDuplicate($trello,$board_ids['source'],'Opening',$board_ids['shop3'],'shop3','Opening');
    copyCardsNoDuplicate($trello,$board_ids['source'],'BOH Cleaning',$board_ids['shop3'],'weekday','BOH');
    copyCardsNoDuplicate($trello,$board_ids['source'],'FOH Cleaning',$board_ids['shop3'],'weekday','FOH');
?>