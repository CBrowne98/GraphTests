<?php
require 'Slim/Slim.php';
require 'database.php';
require 'games_db.php';
use Slim\Slim;
\Slim\Slim::registerAutoloader();

$app = new slim();
$app->get('/games', 'getGames');
$app->post('/addTeam', 'addTeam');
$app->run();
?>