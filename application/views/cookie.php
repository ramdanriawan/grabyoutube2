<?php 

if (!isset($_COOKIE["username"])) {
	header("Location: http://$_SERVER[SERVER_NAME]/index.php/Cadmin/clogin?authentication=false");
}

?>