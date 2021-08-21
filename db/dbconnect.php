<?php

/* Connection to database */
	if(!headers_sent()){
		header("Content-type: text/html; charset=utf-8");
	}
	//$conn =mysqli_connect("localhost","root","","blog");
	//$conn =mysqli_connect("sql102.epizy.com", "epiz_28305267", "73mMsnBgfja", "epiz_28305267_tamlyhocduong");
	$conn = mysqli_connect("sql211.epizy.com", "epiz_29493521", "1LgXE1He2Zt", "epiz_29493521_tamlyhocduong");
	mysqli_set_charset($conn, 'UTF8');
	/* Check connection */
	if(mysqli_connect_error()) {
		echo "Connection failed";
		printf("Error : %s",mysqli_connect_error());
	}

?>
