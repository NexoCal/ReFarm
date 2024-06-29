<?php 

require __DIR__ . '/vendor/autoload.php'; // remove this line if you use a PHP Framework.

use Orhanerday\OpenAi\OpenAi;

//$open_ai = new OpenAi(key_here);

// echo $open_ai->listModels(); // you should execute the request FIRST!
// var_dump($open_ai->getCURLInfo()); // You can call the request

if (isset($_GET['prompt'])){

    $message = $_GET['prompt'];

    $response = $open_ai->chat([
        'model' => 'gpt-4o',
        'messages' => [
            [
                "role" => "system",
                "content" => "You are a helpful farming assistant name joe mama if its doesnt relate to farming answer with 'sorry i dont know'."
            ],
            [
                "role" => "user",
                "content" => $message
            ],
        ],
        'temperature' => 1.0,
        'max_tokens' => 4000,
        'frequency_penalty' => 0,
        'presence_penalty' => 0,
     ]);
    
    //  echo $response
    
     if ($response != null){
        $phpObj = json_decode($response);
        $answer = $phpObj->choices[0]->message->content;
        echo $answer;
     }

}



?>