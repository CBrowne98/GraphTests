<?php

    
    $dsn = 'mysql:host=localhost;port=3306;dbname=testdata';
    $username = 'root';
    $password = '';
    

    // $dsn = 'mysql:host=localhost;port=3306;dbname=phpProject';
    // $username = 'root';
    // $password = '';
     
     
    

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('database_error.php');
        exit();
    }
?>