<?php
// To create rest api for popular per language book
require_once __DIR__ . '/config.php';
class API {
    function Select(){
        $db = new Connect;
        $perlanguage = array();
       
        $data = $db->prepare('SELECT * FROM popularlanguages');
        $data->execute();
        $perlanguage['data'] = array();
       
       
        while($OutputData = $data->fetch(PDO::FETCH_ASSOC)){
            extract($OutputData);
            array_push($perlanguage['data'],$OutputData);
          
        }
       //To group per language availble
        $result = array();
        foreach ($perlanguage['data'] as $element) {
                 $result[$element["language_code"]][] = $element;
        
        }//print_r($result);
           //die;
          
        // To sort create book object per langugaes   
        $popularperlanguage= array();

        foreach ($result as $key => $val) {
          $popularperlanguagebook['language'] =$key;
      
          $popularperlanguagebook['books'] = array();
            foreach($val as $value){
            //print_r($value);die;
                $popularperlanguagedata =  array(
            //print_r($value);     
                    
                    "Title" => $value['title'],
                    "Rating" => $value['average_rating'],
                      
                );
                array_push($popularperlanguagebook['books'],$popularperlanguagedata);

            } //print_r($popularperlanguagebook);   
            array_push($popularperlanguage,$popularperlanguagebook);

        }
       
       // print_r($popularperlanguage);die;
        return json_encode($popularperlanguage);
    }
}

$API = new API;
header('Content-Type: application/json');

echo $API->Select();

?>