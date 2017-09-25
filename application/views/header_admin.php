<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <!--  include library js -->
    <script src="../../node_modules/jquery/dist/jquery.min.js" charset="utf-8"></script>
    <script src="../../node_modules/bootstrap/dist/js/bootstrap.min.js" charset="utf-8"></script>

    <!-- include library css -->
    <link rel="stylesheet" href="../../node_modules/bootstrap/dist/css/bootstrap.min.css">

    <!--  include file js sendiri -->
    <script src="../../script/script.js" charset="utf-8"></script>

    <!--  include file css sendiri -->
    <link rel="stylesheet" href="../../css/style.css">
  </head>
  <body>

  <div class="container-fluid" id="container-fluid-header">
    <div class="container" id="container-header">

    <!-- row header -->
      <div class="row" id="row-header">
        <!-- untuk judul website -->
        <div class="col-md-4 col-xs-12">
          <span><a href="/" id="logo">Grabyoutube</a></span>
        </div>

        <!-- untuk link  -->
        <div class="col-md-8 col-xs-12" id="menu_header">
          <ul class="nav nav-tabs nav-justified">
            <li class="<?php print $this->input->get('cchanel_admin');?>"><a href="cchanel_admin?cchanel_admin=active" >Chanel</a></li>
            <li class="<?php print $this->input->get('cvideos_admin');?>"><a href="cvideos_admin?cvideos_admin=active">Videos</a></li>
            <li class="<?php print $this->input->get('cplaylists_admin');?>"><a href="cplaylists_admin?cplaylists_admin=active">Playlists</a></li>
            <li><button type="button" class="btn btn-success" id="btn-get-data" style="margin: 0 10px;">Get Data</button></li>
          </ul>
        </div>
      </div>

    </div>
  </div>