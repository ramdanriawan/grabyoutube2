<?php
/**
 *
 */
 class Cadmin extends CI_Controller
 {

 	function cchanel_admin()
 	{
    $this->load->model("Mindex");

    $table        = "chanel";
    $column_order = "id";
    $order_by     = "ASC";
    
    if(!isset($_GET["page"], $_GET["limit"])){
      $page = 1;
      $limit = 10;
      $start = 0;
    }else {
      $page         = (int) ceil($this->input->get("page"));
      $limit        = (int) ceil($this->input->get("limit"));
      $start        = (int) ceil(($page * $limit) - $limit) + 1;
    }
    
    $hasil        = $this->Mindex->show($table, $column_order, $order_by, $start, $limit);
    $page_total = ceil($hasil->num_rows() / $limit);
    
      $data["hasil"] = array(
        "data"         => $hasil->result(),
        "data_total"   => $hasil->num_rows(),
        "table"        => $table,
        "column_order" => $column_order,
        "order_by"     => $order_by,
        "page"         => $page,
        "page_total"   => $page_total,
        "limit"        => $limit,
        "start"        => $start
      );

 		$this->load->view("vchanel_admin", $data);
 	}

 	function cvideos_admin()
 	{
 		$this->load->model("Mindex");

    $table        = "videos";
    $column_order = "id";
    $order_by     = "ASC";
    
    if(!isset($_GET["page"], $_GET["limit"])){
      $page = 1;
      $limit = 10;
      $start = 0;
    }else {
      $page         = (int) ceil($this->input->get("page"));
      $limit        = (int) ceil($this->input->get("limit"));
      $start        = (int) ceil(($page * $limit) - $limit) + 1;
    }
    
    $hasil        = $this->Mindex->show($table, $column_order, $order_by, $start, $limit);
    $page_total = ceil($hasil->num_rows() / $limit);
    
      $data["hasil"] = array(
        "data"         => $hasil->result(),
        "data_total"   => $hasil->num_rows(),
        "table"        => $table,
        "column_order" => $column_order,
        "order_by"     => $order_by,
        "page"         => $page,
        "page_total"   => $page_total,
        "limit"        => $limit,
        "start"        => $start
      );

 		$this->load->view("vvideos_admin", $data);
 	}

 	function cplaylists_admin()
 	{
    $this->load->model("Mindex");
    
    $table        = "playlists";
    $column_order = "id";
    $order_by     = "ASC";
    
    if(!isset($_GET["page"], $_GET["limit"])){
      $page = 1;
      $limit = 10;
      $start = 0;
    }else {
      $page         = (int) ceil($this->input->get("page"));
      $limit        = (int) ceil($this->input->get("limit"));
      $start        = (int) ceil(($page * $limit) - $limit) + 1;
    }
    
    $hasil        = $this->Mindex->show($table, $column_order, $order_by, $start, $limit);
    $page_total = ceil($hasil->num_rows() / $limit);
    
    $data["hasil"] = array(
      "data"         => $hasil->result(),
      "data_total"   => $hasil->num_rows(),
      "table"        => $table,
      "column_order" => $column_order,
      "order_by"     => $order_by,
      "page"         => $page,
      "page_total"   => $page_total,
      "limit"        => $limit,
      "start"        => $start
    );
    
 		$this->load->view("vplaylists_admin", $data);
 	}
  
  function cedit_admin()
  {
    if ($this->input->get("media") == "c") {
      $table = "chanel";
    }
    
    $sql = "select * from $table where id=$_GET[id]";
    $hasil = $this->db->query($sql);
    
        
    $data["hasil"] = array(
      "data"         => $hasil->result(),
      "data_total"   => $hasil->num_rows(),
      "table"        => $table,
    );
    
    $this->load->view("vedit_admin", $data);
  }
 } ?>
