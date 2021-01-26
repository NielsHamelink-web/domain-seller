<?php

namespace App\Libraries;

class DirectAdminAPI {

    protected $host = '';
    protected $username = '';
    protected $password = '';
    protected $port = 2222;

    protected $connection = null;
    protected $response = null;

    public function __construct($host, $username, $password, $port = 2222) {
        $this->host = $host;
        $this->username = $username;
        $this->password = $password;
        $this->port = $port;
    }

    public function request($request, $post_content, $method = 'GET') {
        // Build HTTP request headers
        $headers = '';
        $headers[] = "Content-Type: application/x-www-form-urlencoded";
        $headers[] = 'Content-length: '.strlen($post_content);
        $headers[] = 'Authorization: Basic '.base64_encode("$this->username:$this->password");
        
        // Set cURL request properties
        $ch = curl_init();
        $complete_url = $this->host.':' . $this->port;
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, $method.' '.$request.' HTTP/1.1');
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_URL,$complete_url);
        curl_setopt($ch, CURLOPT_FAILONERROR, 1);
        curl_setopt($ch, CURLOPT_TIMEOUT, 15);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_content);
        curl_setopt ($ch, CURLOPT_SSL_VERIFYPEER, FALSE); 
        curl_setopt ($ch, CURLOPT_SSL_VERIFYHOST, FALSE); 
        
        // Send request, get answer
        $answer = curl_exec($ch);
        
        if(!$answer) {
            $answer['error'] = 1;
            $answer['error_msg'] = "CONNECTION ERROR ".curl_errno($ch).": ".curl_error($ch);
        } else {
            parse_str($answer,$answer);
        }

        // Close connection
        curl_close($ch);
        
        return $answer;
    }

}