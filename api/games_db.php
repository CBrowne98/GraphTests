<?php

function getGames(){
	$query="SELECT * FROM testdata1";
	try{
		global $db;
		$games = $db->query($query);
		$games = $games->fetchAll(PDO::FETCH_ASSOC);
		header("Content-Type: application/json", true);
		echo'{"games": ' . json_encode($games) . '}';
	} catch(PDOException $e){
		echo '{"error":{"text":'.$e->getMessage() .'}}';
	}
}
 function addTeam(){
 	global $app;
 	$request=$app->request();
 	$games=json_decode($request->getBody());
 	$team=$games->team;
 	$points=$games->points;
 	//$genre=$games->genre;


 	$query= "INSERT INTO testdata1
 					(team, points)
 				VALUES
 					('$team', $points)";
 	try{
		global $db;
 		$games = $db->exec($query);
 		echo json_encode($games);
 	} catch(PDOException $e){
 		echo '{"error":{"text":'.$e->getMessage() .'}}';
 	}
 }
	
?>