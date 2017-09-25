<?php include 'header_admin.php'; ?>

<div class="container">
	<!-- row 1 -->
	<div class="row">
		<div class="col-xs-12">
			<!-- script jika yang di edit adalah chanel -->
			<?php if($this->input->get("media") == "c"): foreach($hasil["data"] as $key => $value): ?>
				<form class="form" action="" method="post">
					<input class="form-control" type="text" name="link" value="<?php echo $value->link; ?>">
					<input class="form-control" type="text" name="logo" value="<?php echo $value->logo; ?>">
					<input class="form-control" type="text" name="name" value="<?php echo $value->name; ?>">
					<input class="form-control" type="text" name="subscriber" value="<?php echo $value->subscriber; ?>">
					<input class="form-control" type="text" name="videos" value="<?php echo $value->videos; ?>">
					<input class="form-control" type="text" name="playlists" value="<?php echo $value->playlists; ?>">
					<input class="btn btn-primary"type="submit" name="submit" value="submit">
					<input class="btn btn-danger"type="reset" name="submit" value="reset">
			<?php endforeach;  ?>
			
			<!-- script jika yang di edit adalah videos -->
			<?php  elseif($this->input->get("media") == "v"): foreach($hasil["data"] as $key => $value): ?>
				<form action="" method="post">
					<input class="form-control" type="text" name="chanel" value="<?php echo $value->chanel; ?>">
					<input class="form-control" type="text" name="name" value="<?php echo $value->name; ?>">
					<input class="form-control" type="text" name="gambar" value="<?php echo $value->gambar; ?>">
					<input class="form-control" type="text" name="judul" value="<?php echo $value->judul; ?>">
					<input class="form-control" type="text" name="link" value="<?php echo $value->link; ?>">
					<input class="form-control" type="text" name="time" value="<?php echo $value->time; ?>">
					<input class="btn btn-primary"type="submit" name="submit" value="submit">
					<input class="btn btn-danger"type="reset" name="submit" value="reset">
			<?php  endforeach; ?>
			
			<!-- script jika yang diedti adalah playlists -->
			<?php  elseif($this->input->get("media") == "p"): foreach($hasil["data"] as $key => $value): ?>
				<form action="" method="post">
					<input type="text" class="form-control" name="chanel" value="<?php echo $value->chanel ?>">
					<input type="text" class="form-control" name="gambar" value="<?php echo $value->gambar ?>">
					<input type="text" class="form-control" name="judul" value="<?php echo $value->judul ?>">
					<input type="text" class="form-control" name="link" value="<?php echo $value->link ?>">
					<input type="text" class="form-control" name="total_videos" value="<?php echo $value->total_videos ?>">
					<input class="btn btn-primary"type="submit" name="submit" value="submit">
					<input class="btn btn-danger"type="reset" name="submit" value="reset">
			<?php  endforeach; ?>
			
			<!-- script jika tidak ada yang diedit -->
			<?php elseif($hasil["data_total"] < 1): ?>
				<h1>Tidak Ada Data Media Yang Akan Diedit</h1>
			<?php endif; ?>
			
		</div>
	</div>
	
</div>

<?php include 'footer_admin.php'; ?>