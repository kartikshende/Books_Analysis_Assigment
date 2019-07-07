<?php

require_once __DIR__ . '/config.php';
class API {
    function Select(){
        $db = new Connect;
        $popularbooks = array();
       
        $data = $db->prepare('SELECT * FROM popular_books ORDER BY bookID');
        $data->execute();
        $popularbooks['data'] = array();
        while($OutputData = $data->fetch(PDO::FETCH_ASSOC)){
            extract($OutputData);
            //$popularbooks[$OutputData['bookID']]
            $popularbookdata = array(
                "Title" => $OutputData['title'],
                "Rating" => $OutputData['average_rating'],
                
            );

            array_push($popularbooks['data'], $popularbookdata);
        }
        return json_encode($popularbooks);
    }
}

$API = new API;
header('Content-Type: application/json');

echo $API->Select();

?>