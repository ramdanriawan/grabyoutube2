<?php 

/**
* 
*/
class Cindex extends CI_Controller
{
	

	function index()
	{
		header("Location: http://$_SERVER[SERVER_NAME]/index.php/Cindex/cindexf?media=v");
	}

	function cindexf($table = "videos", $column_order = "id", $order_by ="asc", $start = 0, $limit = 10, $page = 1){
		$this->load->model("Mindex");
		
		if($this->input->get("media") == "c"){
			$table = "chanel";
		}elseif($this->input->get("media") == "v"){
			$table = "videos";
		}elseif($this->input->get("media") == "p"){
			$table = "playlists";
		}

		if(isset($_GET["page"]) && isset($_GET["limit"])){
			$start = ceil(($this->input->get("page") * $this->input->get("limit")) - $this->input->get("limit") +1);
			 $page = $this->input->get("page");
		}
		
		$result = $this->Mindex->show($table, $column_order, $order_by, $start, $limit);
		$page_total = ceil($this->db->query("select * from $table")->num_rows() / $limit);
		$data_total = $this->db->query("select * from $table")->num_rows();

      	$data["index"] = array(
	        "data"         => $result->result(),
	        "data_total"   => $data_total,
	        "table"        => $table,
	        "column_order" => $column_order,
	        "order_by"     => $order_by,
	        "page"         => $page,
	        "page_total"   => $page_total,
	        "limit"        => $limit,
	        "start"        => $start
      	);

      	$this->load->model("Mselectdb");
      	$result2 = $this->Mselectdb->mselectdbf("chanel");

		$data["sidebar"] = array(
			"data"		 => $result2->result(),
			"data_total" => $result2->num_rows()
		);

		if(!isset($_GET["media"])){
			header("Location: http://$_SERVER[SERVER_NAME]/index.php/Cindex/cindexf?media=v");
		}

      $this->load->view("vindex", $data);

	}

}
 ?>