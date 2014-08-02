<?php

	$mysql_ressource = mysql_connect('localhost', 'root', 'root');
	mysql_set_charset('utf8',$mysql_ressource);
	mysql_select_db("jam_shaker", $mysql_ressource);

?>