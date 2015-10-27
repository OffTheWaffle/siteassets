<?php
    include_once('Trello.php');
    include_once('config.php');
    function getArrBoardList($lists)
    {
        $arrList = array();
        foreach($lists as $list)
        {
            $arrList[strtolower($list->name)] = $list->id;
            $arrList['idBoard'] = $list->idBoard;
        }
        return $arrList;
    }
    function getArrBoardListCards($lists)
    {
        $arrList = array();
        foreach($lists as $list)
        {
            $arrList[strtolower($list->name)] = $list->id;
            //$arrList[strtolower($list->name).'labels']= $list->labels;
            $arrList['idBoard'] = $list->idBoard;
            $arrList['idList'] = $list->idList;
        }
        return $arrList;
    }
    function copyCardsNoDuplicate($trello,$srcBoardId,$srcListName,$shopBoardId,$labelName,$shopListName)
    {
        $key_path = '?key=07db0c758eb1b1227ba29ba040693752&token=2e6a8e065488ac69884746c09e2d30b94488d6569ed11aedde97ac7c908b5e6b&';
        $sourceLists = $trello->boards->get($srcBoardId.'/lists');
        $arrSourceLists = getArrBoardList($sourceLists);
        $shopLists = $trello->boards->get($shopBoardId.'/lists');
        $arrShopLists = getArrBoardList($shopLists);
        if(is_array($arrSourceLists) && !empty($arrSourceLists) && array_key_exists(strtolower($srcListName), $arrSourceLists))
        {
            //echo "source list exits. <br/>";
            if(!array_key_exists(strtolower($shopListName), $arrShopLists))
            {
                //echo 'initiate creation of list!<br/>';
                $newlist = $trello->lists->post($key_path.'name='.$shopListName.'&idBoard='.$arrShopLists['idBoard']);
                //var_dump($newlist);
                $shopLists = $trello->boards->get($shopBoardId.'/lists');
                $arrShopLists = getArrBoardList($shopLists);
            }
            else
            {
                //echo "Destination list exists.<br/>";
            }
            $sourceCards = $trello->lists->get($arrSourceLists[strtolower($srcListName)].'/cards');
            $arrSourceCards = getArrBoardListCards($sourceCards);

            $shopCards = $trello->lists->get($arrShopLists[strtolower($shopListName)].'/cards');
            $arrShopCards = getArrBoardListCards($shopCards);

            /*foreach($arrSourceCards as $key => $value)
            {
                if(!($key=='idBoard' || $key=='idList'))
                {
                    if(!isset($arrShopCards[$key]))
                    {
                        //$newcard = $trello->cards->post($key_path.'due=null3&idList='.$arrShopCards['idList'].'&urlSource=https://&idCardSource='.$value);
                        $newcard = $trello->cards->post($key_path.'due=null&idList='.$arrShopLists[strtolower($shopListName)].'&urlSource=https://&idCardSource='.$value);
                        //var_dump($newcard);
                        //echo $arrShopCards['idList'];
                    }

                }
            }*/
            $labelNameValue = '';
            if($labelName=='weekday')
            {
                date_default_timezone_set('UTC');
                $timebefore8hours = time()-28800;//+86400;
                $labelNameValue = strtolower(date('l',$timebefore8hours));
                //$labelNameValue = 'saturday';
            }
            else
            {
                $labelNameValue = strtolower($labelName);
            }
            foreach(array_reverse($sourceCards) as $card)
            {
                if(!isset($arrShopCards[strtolower($card->name)]))
                {
                    if(empty($card->labels) && strtolower($labelName)!='weekday')
                    {
                        $newcard = $trello->cards->post($key_path.'due=null&idList='.$arrShopLists[strtolower($shopListName)].'&pos=top&urlSource=https://&idCardSource='.$card->id);
                        //echo '<h1>Card Inserted!</h1>.<br/>';
                    }
                    else
                    {
                        $labelFound = 0;
                        foreach($card->labels as $label)
                        {
                            if(strtolower($label->name)==strtolower($labelNameValue))
                            {
                                $labelFound = 1;
                                //echo $label->name;
                            }
                            else
                            {
                                //echo $label->name;
                            }
                        }
                        if($labelFound==1)
                        {
                            $newcard = $trello->cards->post($key_path.'due=null&idList='.$arrShopLists[strtolower($shopListName)].'&pos=top&urlSource=https://&idCardSource='.$card->id);
                            //echo '<h1>Card Inserted!</h1>.<br/>';
                            //echo '<h1>Label Found!</h1>';
                        }
                        else
                        {
                            //echo '<h1>Card Not Inserted!</h1>.<br/>';
                        }

                    }
                    //$newcard = $trello->cards->post($key_path.'due=null&idList='.$arrShopLists[strtolower($shopListName)].'&urlSource=https://&idCardSource='.$card->id);
                    //var_dump($newcard);
                    //echo $arrShopCards['idList'];
                }
            }
        }
        else
        {
            //echo "source list does not exist.<br/>";
        }
    }
?>