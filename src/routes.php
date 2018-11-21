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
	$sth = getConnection()->prepare('SELECT DISTINCT n.* , c.name as cate_name , c.slug as cate_slug , a.name as author_name , a.username as author_username FROM `news` as n INNER JOIN `categories`as c On n.cate_id = c.id INNER JOIN authors as a ON n.author_id = a.id');
	$sth->execute();
	$news = $sth->fetchAll();
	return $response->withJson(array('data' => array('news' => $news)));
});
//get by tags
$app->get('/tags/{param}', function (Request $request, Response $response, array $args) {
	$param = $args['param'];
	$sql;
	if(is_numeric($param))
	{
		$sql = "SELECT DISTINCT tag.news_id FROM `tags_news` as tag where tag.tags_id = $param";
		
		$sth = getConnection()->prepare($sql);
		$sth->execute();
		$list_id = $sth->fetchAll();
		$list_news = [];
		foreach ($list_id as $key => $value) {
			$list_news[] = $value['news_id'];
			 //echo $value['news_id'];
		}
		//var_dump($list_news);die;
		$sql2 = "SELECT DISTINCT n.* , c.name as cate_name , c.slug as cate_slug , a.name as author_name , a.username as author_username FROM `news` as n INNER JOIN `categories`as c On n.cate_id = c.id INNER JOIN authors as a ON n.author_id = a.id where n.id IN (".implode(',',$list_news).")";
		//var_dump($sql2);die;
		$sth = getConnection()->prepare($sql2);
		$sth->execute();
		$res = $sth->fetchAll();
		return $response->withJson(array('data' => array('news' => $res)));
	}
	else
	{
		$sql = "SELECT DISTINCT news_id FROM `tags` as t INNER JOIN `tags_news` as tn ON tn.tags_id = t.id where t.slug = '$param'";
		//var_dump($sql);die;
		$sth = getConnection()->prepare($sql);
		$sth->execute();
		$list_id = $sth->fetchAll();
		//var_dump($list_id);die;
		$list_news = [];
		foreach ($list_id as $key => $value) {
			$list_news[] = $value['news_id'];
			 //echo $value['news_id'];
		}
		//var_dump($list_news);die;
		$sql2 = "SELECT DISTINCT n.* , c.name as cate_name , c.slug as cate_slug , a.name as author_name , a.username as author_username FROM `news` as n INNER JOIN `categories`as c On n.cate_id = c.id INNER JOIN authors as a ON n.author_id = a.id where n.id IN (".implode(',',$list_news).")";
		//var_dump($sql2);die;
		$sth = getConnection()->prepare($sql2);
		$sth->execute();
		$res = $sth->fetchAll();
		return $response->withJson(array('data' => array('news' => $res)));
	}
});
//get category by id or by name
$app->get('/categories/{param}', function (Request $request, Response $response, array $args) {
	$param = $args['param'];

	$sql;
	//by id
	if(is_numeric($param))
	{
		$sql= "SELECT DISTINCT n.* , c.name as cate_name , c.slug as cate_slug , a.name as author_name , a.username as author_username FROM `news` as n INNER JOIN `categories`as c On n.cate_id = c.id INNER JOIN authors as a ON n.author_id = a.id where c.id = $param";
	}
	//by slug
	else
	{
		$sql= "SELECT DISTINCT n.* , c.name as cate_name , c.slug as cate_slug , a.name as author_name , a.username as author_username FROM `news` as n INNER JOIN `categories`as c On n.cate_id = c.id INNER JOIN authors as a ON n.author_id = a.id where c.slug = '$param'";
	}
	$sth = getConnection()->prepare($sql);
	$sth->execute();
	$news = $sth->fetchAll();
	return $response->withJson(array('data' => array('news' => $news)));
});