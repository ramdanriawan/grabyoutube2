<?php include 'header_admin.php'; ?>

<div class="container"  id="container-body">
	
	<!--  jika request get adalah videos dan juga default -->
	<?php if($this->input->get("media") == "v" || !isset($_GET["media"])): ?>
  <?php $query2 = $this->db->query("select link,name from chanel"); $hasil2 = $query2->result(); ?>
  <div class="row">
    <div class="col-xs-6">
      <span><h1>List Videos</h1></span>
    </div>
    
    <!-- untuk form menambah more videos -->
    <div class="col-xs-6 pull-right">
      <form id="more_videos" class="form-inline pull-right" method="">
        <select class="form-control" name="chanel">
          <?php foreach($hasil2 as $key => $value): ?>
          <option value="<?php echo $value->link; ?>"><?php echo $value->name; ?></option>
          <?php endforeach; ?>
        </select>
        <input class="form-control" type="search" name="file" placeholder="Response dari more videos">
        <input class="form-control btn btn-primary" type="submit" value="+Add">
      </form>
    </div>
	</div>
	
	<div class="row">
		<div class='table-responsive'>
		  <table class='table table-striped table-bordered table-hover table-condensed'>
		    <thead>
		      <tr>
		        <th>#ID</th>
		        <th>Chanel</th>
		        <th>Name</th>
		        <th>Gambar</th>
		        <th>Judul</th>
		        <th>Link</th>
		        <th>Time</th>
		        <th>Actions</th>
		      </tr>
		    </thead>
		    <tbody>
					<?php 
						$a = 0;
						foreach ($hasil["data"] as $key => $value) if($a++ <= $hasil["limit"]) {
							print "<tr><td>$value->id</td><td>$value->chanel</td> <td>$value->name</td> <td>$value->gambar</td><td>$value->judul</td><td>$value->link</td><td>$value->time</td>  <td><a href='http://localhost/index.php/Cadmin/cedit_admin?media=v&action=edit&id=$value->id'>Edit</a> | <a class='delete' href='http://localhost/index.php/Cadmin/cedit_admin?media=v&action=delete&id=$value->id' data-id='$value->id' data-media='videos'>Delete</a></td></tr>";
						}
					?>
		      <tr>
		        <td></td>
		      </tr>
		    </tbody>
		  </table>
		</div>
	</div>
	
	    
    
    <!-- row paging -->
  <div class="row">
    <div class="col-md-8 col-md-offset-2">
      <ul class="pagination">
        <li class="first_pagination"><a  style="background: #333; color: white;">Page:: </a></li>
        <?php for($i = $hasil["page"]; $i <= $hasil["page"] + 10 && $i <= $hasil["page_total"]; $i++): ?>
        <?php if($i == $hasil["page"]){$active = "active";}else{$active = "";} ?>
          <li class="<?php echo $active; ?>">
            <a href="<?php echo "http://$_SERVER[SERVER_NAME]/index.php/Cadmin/cadminf?media=v&page=$i&limit=$hasil[limit]&active=active";?>"><?php echo $i; ?></a>
          </li>
        <?php endfor; ?>
        <li class="end_pagination"> <a style="background: #333; color: white;">Of: <?php echo "$hasil[page_total], $hasil[data_total] data"; ?></a></li>
      </ul>
    </div>
  </div>
		
	<?php endif; ?>
	
	<!-- jika request get adalah chanel -->
	<?php if($this->input->get("media") == "c"): ?>
		<div class="row">
    <!--  tulisan list chanel -->
    <div class="col-xs-6 pull-left">
      <span><h1>List Chanel</h1></span>
    </div>
    
    <!-- untuk form menambah url admin -->
    <div class="col-xs-6 pull-right">
      <form id="tambah_chanel" class="form-inline pull-right">
        <input class="form-control" type="search" name="file" placeholder="Url chanel, EX: https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA">
        <input type="hidden" name="table" value="chanel">
        <input type="hidden" name="column" value="link">
        <input class="form-control btn btn-primary" type="submit" value="+Add">
      </form>
    </div>
  </div>
  
  <!-- row 2 -->
  <div class="row">
    <div class='table-responsive'>
      <table class='table table-striped table-bordered table-hover table-condensed'>
        <thead>
          <tr>
            <th>#ID</th>
            <th>Link</th>
            <th>Logo</th>
            <th>Name</th>
            <th>Subscriber</th>
            <th>Videos</th>
            <th>Playlists</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <!--  munculin datanya dalam baris table -->
          <?php 
            $a = 0;
            foreach ($hasil["data"] as $key => $value) if ($a++ <= $hasil["limit"]) {
              print "<tr>
              <td>$value->id</td><td>$value->link</td> <td>$value->logo</td> <td>$value->name</td> <td>$value->subscriber</td> <td>$value->videos</td> <td>$value->playlists</td> <td><a href='http://localhost/index.php/Cadmin/cedit_admin?media=c&action=edit&id=$value->id'>Edit</a> | <a class='delete' href='http://localhost/index.php/Cadmin/cedit_admin?media=c&action=delete&id=$value->id' data-id='$value->id' data-media='chanel'>Delete</a></td></tr>";
            }
            
          ?>
        </tbody>
      </table>
    </div>
    </div>
     
    <!-- row paging -->
  <div class="row">
    <div class="col-md-8 col-md-offset-2">
      <ul class="pagination">
        <li class="first_pagination"><a  style="background: #333; color: white;">Page:: </a></li>
        <?php for($i = $hasil["page"]; $i <= $hasil["page"] + 10 && $i <= $hasil["page_total"]; $i++): ?>
        <?php if($i == $hasil["page"]){$active = "active";}else{$active = "";} ?>
          <li class="<?php echo $active; ?>">
            <a href="<?php echo "http://$_SERVER[SERVER_NAME]/index.php/Cadmin/cadminf?media=c&page=$i&limit=$hasil[limit]&active=active";?>"><?php echo $i; ?></a>
          </li>
        <?php endfor; ?>
        <li class="end_pagination"> <a style="background: #333; color: white;">Of: <?php echo "$hasil[page_total], $hasil[data_total] data"; ?></a></li>
      </ul>
    </div>
  </div>
	<?php endif; ?>
	
	<!-- jika request get adalah playlists -->
	<?php if($this->input->get("media") == "p"): ?>
  <?php $query2 = $this->db->query("select link,name from chanel"); $hasil2 = $query2->result(); ?>

  <div class="row">
    <!--  tulisan list chanel -->
    <div class="col-xs-6 pull-left">
      <span><h1>List Playlists</h1></span>
    </div>
    
    <!-- untuk form menambah url more playlists -->
    <div class="col-xs-6 pull-right">
      <form id="more_playlists" class="form-inline pull-right">
        <select class="form-control" name="chanel">
          <?php foreach($hasil2 as $key => $value): ?>
          <option value="<?php echo $value->link; ?>"><?php echo $value->name; ?></option>
          <?php endforeach; ?>
        </select>
        <input class="form-control" type="search" name="file" placeholder="Response dari more playlists">
        <input class="form-control btn btn-primary" type="submit" value="+Add">
      </form>
    </div>
  </div>

  <div class="row">
    <div class='table-responsive'>
      <table class='table table-striped table-bordered table-hover table-condensed'>
        <thead>
          <tr>
            <th>#ID</th>
            <th>Chanel</th>
            <th>Name</th>
            <th>Gambar</th>
            <th>Judul</th>
            <th>Link</th>
            <th>Total Videos</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <!--  munculin datanya dalam baris table -->
          <?php 
            $a = 0;
            foreach ($hasil["data"] as $key => $value) if ($a++ <= $hasil["limit"]) {
              print "<tr><td>$value->id</td><td>$value->chanel</td> <td>$value->name</td> <td>$value->gambar</td> <td>$value->judul</td> <td>$value->link</td> <td>$value->total_videos</td> <td><a href='http://localhost/index.php/Cadmin/cedit_admin?media=p&action=edit&id=$value->id'>Edit</a> | <a class='delete' href='http://localhost/index.php/Cadmin/cedit_admin?media=p&action=delete&id=$value->id' data-id='$value->id' data-media='playlists'>Delete</a></td></tr>";
            }
            
          ?>
        </tbody>
      </table>
    </div>
  </div>
    
    <!-- row paging -->
  <div class="row">
    <div class="col-md-8 col-md-offset-2">
      <ul class="pagination">
        <li class="first_pagination"><a  style="background: #333; color: white;">Page:: </a></li>
        <?php for($i = $hasil["page"]; $i <= $hasil["page"] + 10 && $i <= $hasil["page_total"]; $i++): ?>
        <?php if($i == $hasil["page"]){$active = "active";}else{$active = "";} ?>
          <li class="<?php echo $active; ?>">
            <a href="<?php echo "http://$_SERVER[SERVER_NAME]/index.php/Cadmin/cadminf?media=p&page=$i&limit=$hasil[limit]&active=active";?>"><?php echo $i; ?></a>
          </li>
        <?php endfor; ?>
        <li class="end_pagination"> <a style="background: #333; color: white;">Of: <?php echo "$hasil[page_total], $hasil[data_total] data"; ?></a></li>
      </ul>
    </div>
  </div>
	<?php endif; ?>
</div>

<?php include 'footer_admin.php'; ?>