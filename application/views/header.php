<!DOCTYPE html>
<html>
<head>
	<title>Header</title>
	<script src="../../node_modules/jquery/dist/jquery.min.js"></script>
	<script src="../../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../../script/script.js"></script>
	<link rel="stylesheet" type="text/css" href="../../node_modules/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../../css/style.css">
</head>
<body>

<div class="container-fluid" id="container-fluid-header">
	<div class="container" id="container-header">
		<div class="row">

			<div class="col-xs-4">
				<div class="glyphicon glyphicon-th" id="chanel_toggler"></div> 
				<span><a href="/" id="logo">Grabyoutube</a></span>
			</div>

			<div class="col-xs-8">
				<ul class="nav nav-tabs">
					<li class="<?php echo $this->input->get("chanel"); ?>"><a href="cindexf?media=c&chanel=active">Chanel</a></li>
					<li class="<?php echo $this->input->get("videos"); ?>"><a href="cindexf?media=v&videos=active">Videos</a></li>
					<li class="<?php echo $this->input->get("playlists"); ?>"><a href="cindexf?media=p&playlists=active">Playlists</a></li>
				</ul>
			</div>

		</div>
	</div>
</div>


<div id="sidebar">
	<ul>
		<li class="header">CHANEL (<?php echo $sidebar["data_total"];?>)</li>
		<?php foreach($sidebar["data"] as $key => $value): ?>
			<li><a href="<?php echo $value->link;?>"><?php echo $value->name;?></a></li>
		<?php endforeach; ?>
	</ul>
</div>