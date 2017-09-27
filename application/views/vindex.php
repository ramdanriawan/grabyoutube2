<?php include 'header.php'; ?>

<div class="container" id="container-form">
	<div class="row" id="row-form">
		<div class="col-md-10 col-md-offset-1">
			<form class="form-inline col-md-10 col-md-offset-1">
				<div class="form-group row">
				<input class="form-control" type="search" name="q" placeholder="cari video..." style="width: 500px;">
				<input class="form-control btn btn-primary" type="submit" name="submit" value="cari">
				</div>
			</form>
		</div>
	</div>
</div>

<div class="container" id="container-body">
	<!--  jika media adalah videos atau tidak diset -->
	<?php  if($this->input->get("media") == "v" || !isset($_GET["media"])): ?>
	<div class="row">
		<div class="col-md-12">
		<?php foreach($index["data"] as $key => $value): ?>
			<div class="col-md-3">
				<div class="thumbnail" style="height: 200px;">
					<img src="<?php echo $value->gambar;?>" />
					<div class="caption">
						<span><a href="<?php echo $value->link ?>"><?php echo $value->judul; ?></a></span><br>
						<span><b><?php echo $value->name; ?></b></span> | 
						<span><?php echo $value->time; ?></span>
					</div>
				</div>
			</div>
			<?php endforeach; ?>
		</div>
	</div>

	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<?php for($i = $index["page"]; $i <= $index["page"] + 10 && $i <= $index["page_total"]; $i++): ?>
				<a href="<?php echo "http://$_SERVER[SERVER_NAME]$_SERVER[REQUEST_URI]&page=$i&limit=$index[limit]";?>"><?php echo $i; ?></a>
			<?php endfor; ?>
		</div>
	</div>
	<?php endif; ?>
	
	<!-- jika media adalah chanel -->
	<?php if($this->input->get("media") == "c"):?>
	<div class="row">
		<div class="col-md-12">
		<?php foreach($index["data"] as $key => $value): ?>
			<div class="col-md-3">
				<div class="thumbnail" style="height: 200px;">
					<img src="<?php echo $value->logo;?>" />
					<div class="caption">
						<span><a href="<?php echo $value->link ?>"><?php echo $value->name; ?></a></span><br>
						<span><b><?php echo $value->subscriber; ?></b> subscriber</span>
					</div>
				</div>
			</div>
			<?php endforeach; ?>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<?php for($i = $index["page"]; $i <= $index["page"] + 10 && $i <= $index["page_total"]; $i++): ?>
				<a href="<?php echo "http://$_SERVER[SERVER_NAME]$_SERVER[REQUEST_URI]&page=$i&limit=$index[limit]";?>"><?php echo $i; ?></a>
			<?php endfor; ?>
		</div>
	</div>
	<?php endif;?>
	
	<!-- jika media adalah playlists -->
	<?php if($this->input->get("media") == "p"):?>
	<div class="row">
		<div class="col-md-12">
		<?php foreach($index["data"] as $key => $value): ?>
			<div class="col-md-3">
				<div class="thumbnail" style="height: 200px;">
					<img src="<?php echo $value->gambar;?>" />
					<div class="caption">
						<span><a href="<?php echo $value->link;?>"><?php echo $value->judul; ?></a></span><br>
						<span><b><?php echo $value->total_videos; ?></b> videos</span> | 
						<span><?php echo $value->name; ?></span>
					</div>
				</div>
			</div>
			<?php endforeach; ?>
		</div>
	</div>

	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<ul class="pagination">
				<?php if($_GET["page"] == $index["page"]){$active2 = "active";} ?>
				<?php for($i = $index["page"]; $i <= $index["page"] + 10 && $i <= $index["page_total"]; $i++): ?>
					<li class="<?php echo $active2; ?>">
						<a href="<?php echo "http://$_SERVER[SERVER_NAME]$_SERVER[REQUEST_URI]&page=$i&limit=$index[limit]&active=active";?>"><?php echo $i; ?></a>
					</li>
			<?php endfor; ?>
		</ul>
		</div>
	</div>
	<?php endif; ?>

</div>

<?php include 'footer_admin.php'; ?>