<?php

require __DIR__ . '/vendor/autoload.php'; // remove this line if you use a PHP Framework.

$client = OpenAI::client();

// $imgData = $_GET['img64'];

function encodeImage($imagePath): string
{
    $imageContent = file_get_contents($imagePath);
    return base64_encode($imageContent);
}

$imagePath = 'uploads/tmpIMG.jpg';
$base64Image = encodeImage($imagePath);

$payload = [
    'model'      => 'gpt-4o',
    'messages'   => [
        [
            'role'    => 'user',
            'content' => [
                [
                    'type' => 'text',
                    'text' => "berdasarkan gambar yang diberikan, tolong berikan analisis terhadap kondisi tanaman dan berikan saya saran yang sesuai. maksimal saran adalah 5 dan jawab menggunakan plaintext saja tanpa styling atau sejenisnya"
                ],
                [
                    'type' => 'image_url',
                    'image_url' => [
                        'url' => "data:image/png;base64,$base64Image"
                    ]
                ],
            ],
        ]
    ],
    'temperature' => 0.7,
    'max_tokens' => 2000,
    'frequency_penalty' => 0,
    'presence_penalty' => 0,
];

$result  = $client->chat()->create($payload);

if ($result != null) {
    $answer = $result->choices[0]->message->content;
    echo $answer;
}
