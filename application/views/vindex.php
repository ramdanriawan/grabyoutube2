<?php include 'header.php'; ?>

<div class="container" id="container-form">
	<div class="row" id="row-form">
		<div class="col-md-10 col-md-offset-1">
			<form class="form-inline col-md-10 col-md-offset-1">
				<div class="form-group row">
				<input class="form-control" type="search" name="q" placeholder="cari video..." style="width: 700px;">
				<input class="form-control btn btn-primary" type="submit" name="submit" value="cari">
				</div>
			</form>
		</div>
	</div>
</div>

<div class="container" id="container-body">
	<?php  if($this->input->get("media") == "v"): ?>
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
			<?php for($i = 1; $i <= $index["page_total"]; $i++): ?>
				<a href="<?php echo $i;?>"><?php echo $i; ?></a>
			<?php endfor; ?>
		</div>
	</div>
	<?php endif; ?>

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
	<?php endif;?>

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
	<?php endif; ?>

</div>

<?php include 'footer_admin.php'; ?>