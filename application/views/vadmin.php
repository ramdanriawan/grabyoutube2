<?php include 'header_admin.php'; ?>

<div class="container"  id="container-body">
	
	<!--  jika request get adalah videos -->
	<?php if($this->input->get("media") == "v"): ?>
	<div class="row">
		<div class="col-xs-6">
			<span><h1>List Videos</h1></span>
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
						foreach ($hasil["data"] as $key => $value) if($a <= $hasil["limit"]) {
							print "<tr><td>$value->id</td><td>$value->chanel</td> <td>$value->name</td> <td>$value->gambar</td><td>$value->judul</td><td>$value->link</td><td>$value->time</td>  <td><a href='http://localhost/index.php/Cadmin/cedit_admin?media=v&action=edit&id=$value->id'>Edit</a> | <a href='http://localhost/index.php/Cadmin/cadmin_edit?media=v&action=delete&id=$value->id'>Delete</a></td></tr>";
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
      <nav>
        <ul class="pager">
          <!-- script untuk membuat paging -->
          <?php 
            for ($i=1; $i <= $hasil["page_total"]; $i++) { 
              print "<li><a href=http://$_SERVER[SERVER_NAME]$_SERVER[REQUEST_URI]&page=$i&limit=$hasil[limit]>$i</a></li>";
            }
          ?>
        </ul>
      </nav>
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
            foreach ($hasil["data"] as $key => $value) if ($a <= $hasil["limit"]) {
              print "<tr>
              <td>$value->id</td><td>$value->link</td> <td>$value->logo</td> <td>$value->name</td> <td>$value->subscriber</td> <td>$value->videos</td> <td>$value->playlists</td> <td><a href='http://localhost/index.php/Cadmin/cedit_admin?media=c&action=edit&id=$value->id'>Edit</a> | <a href='http://localhost/index.php/Cadmin/cedit_admin?media=c&action=delete&id=$value->id'>Delete</a></td></tr>";
            }
            
          ?>
        </tbody>
      </table>
    </div>
    
    <!-- row paging -->
    <div class="row">
      <nav>
        <ul class="pager">
          <!-- script untuk membuat paging -->
          <?php 
            for ($i=1; $i <= $hasil["page_total"]; $i++) { 
              print "<li><a href=http://$_SERVER[SERVER_NAME]$_SERVER[REQUEST_URI]&page=$i&limit=$hasil[limit]>$i</a></li>";
            }
          ?>
        </ul>
      </nav>
    </div>
  </div>
	<?php endif; ?>
	
	<!-- jika request get adalah playlists -->
	<?php if($this->input->get("media") == "p"): ?>
  <!-- row 2 -->
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
            foreach ($hasil["data"] as $key => $value) if ($a <= $hasil["limit"]) {
              print "<tr>
              <td>$value->id</td><td>$value->chanel</td> <td>$value->name</td> <td>$value->gambar</td> <td>$value->judul</td> <td>$value->link</td> <td>$value->total_videos</td> <td><a href='http://localhost/index.php/Cadmin/cedit_admin?media=p&action=edit&id=$value->id'>Edit</a> | <a href='http://localhost/index.php/Cadmin/cedit_admin?media=c&action=delete&id=$value->id'>Delete</a></td></tr>";
            }
            
          ?>
        </tbody>
      </table>
    </div>
    
    <!-- row paging -->
    <div class="row">
      <nav>
        <ul class="pager">
          <!-- script untuk membuat paging -->
          <?php 
            for ($i=1; $i <= $hasil["page_total"]; $i++) { 
              print "<li><a href=http://$_SERVER[SERVER_NAME]$_SERVER[REQUEST_URI]&page=$i&limit=$hasil[limit]>$i</a></li>";
            }
          ?>
        </ul>
      </nav>
    </div>
  </div>
	<?php endif; ?>
</div>

<?php include 'footer_admin.php'; ?>