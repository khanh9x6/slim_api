<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes

// $app->get('/[{name}]', function (Request $request, Response $response, array $args) {
//     // Sample log message
//     $this->logger->info("Slim-Skeleton '/' route");

//     // Render index view
//     return $this->renderer->render($response, 'index.phtml', $args);
// });
$app->get('/news', function (Request $request, Response $response, array $args) {
	$sth = getConnection()->prepare('SELECT * FROM news');
	$sth->execute();
	$ftpAccounts = $sth->fetchAll();
	return $response->withJson(array('data' => array('data' => $ftpAccounts)));
});