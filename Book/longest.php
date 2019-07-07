<?php
//To create rest api for longest to read book
require_once __DIR__ . '/config.php';
class API {
    function Select(){
        $db = new Connect;
        $longestbooks = array();
       
        $data = $db->prepare('SELECT * FROM longestbooks ORDER BY bookID');
        $data->execute();
        $longestbooks['data'] = array();
        while($OutputData = $data->fetch(PDO::FETCH_ASSOC)){
            extract($OutputData);
            //$longestbooks[$OutputData['bookID']]
            $longestbookdata = array(
                "Title" => $OutputData['title'],
                "Author" => $OutputData['authors'],
                "PageNumber"=> $OutputData['# num_pages']
            );

            array_push($longestbooks['data'], $longestbookdata);
        }
        return json_encode($longestbooks);
    }
}

$API = new API;
header('Content-Type: application/json');

echo $API->Select();

?>