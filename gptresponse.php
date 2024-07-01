<?php

require_once 'vendor/autoload.php'; // remove this line if you use a PHP Framework.

use Orhanerday\OpenAi\OpenAi;

//$open_ai = new OpenAi("nothing");

// echo $open_ai->listModels(); // you should execute the request FIRST!
// var_dump($open_ai->getCURLInfo()); // You can call the request

if (isset($_GET['tinggi'])) {

    $tinggi = $_GET['tinggi'];
    $daun = $_GET['daun'];
    $batang = $_GET['batang'];
    $lembab = $_GET['lembab'];
    $freq = $_GET['freq'];

    $message = "Plant Name: Tomat
Plant Height: $tinggi
Plant Leaves Condition: $daun
Plant Trunk Condition: $batang
Plant Humidity: $lembab
Plant Watering Frequency: $freq

Using the data given to you, provide a suggestion on how to make my plant flourish and estimate the number of days left before harvest. Use the following format:

Current State of the Plant:
[This is where you give a short explanation about the current state of the plant.]

Estimated Time Before Harvest:
[this is where you give a estimated the number of day before harvest, use the format of range example '10 - 20 days left']

Suggestions for Care:
[This is where you put suggestions on what I should do to take care of the plant and make it flourish. Maximum suggestion is 5]

just plaintext dont use any bolding or any text styling";

    $response = $open_ai->chat([
        'model' => 'gpt-4o',
        'messages' => [
            [
                "role" => "system",
                "content" => "You are a helpful farming assistant"
            ],
            [
                "role" => "user",
                "content" => $message
            ],
        ],
        'temperature' => 0.7,
        'max_tokens' => 2000,
        'frequency_penalty' => 0,
        'presence_penalty' => 0,
    ]);

    //  echo $response

    if ($response != null) {
        $phpObj = json_decode($response);
        $answer = $phpObj->choices[0]->message->content;
        echo $answer;
    }
}
