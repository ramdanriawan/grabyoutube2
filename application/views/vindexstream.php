<?php include 'header.php'; ?>

<div class="container" id="container-body">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<?php 
			$url = parse_url($_GET["v"]);
			parse_str($url["query"], $array); ?>
			<iframe src="https://www.youtube.com/embed/<?php echo $array['v']; ?>?fs=1" width="640" height="480" allowfullscreen></iframe>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<ul class="nav nav-tabs">
				<li>
					<?php if($hasil["get_prev_media"] == true):?>
					<a href="<?php echo $hasil['prev_media'][0]->link;?>">Prev <<<</a>
					<?php endif; ?> | 
					<?php if($hasil["get_next_media"] == true): ?>
					<a href="<?php echo $hasil['next_media'][0]->link;?>">Next >>></a>
					<?php endif; ?>
				</li>
			</ul>
		</div>
	</div>
</div>

<?php include 'footer_admin.php'; ?>