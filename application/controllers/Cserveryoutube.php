<?php 
/**
 * 
 */
 class Cserveryoutube extends CI_Controller
 {
 	
 	function cserveryoutubef()
 	{
 		//load model untuk mengambil data dari database
 		$this->load->model("Mselectdb");

 		//$table untuk menentukan table;
 		$table = "chanel";

 		//result yang di dapat dari model mselctdb
 		$result = $this->Mselectdb->mselectdbf($table);

 		//openr melalui variabel hasil
 		$data["hasil"] = array(
 							"data" => $result->result(),
 							"total_data" => $result->num_rows()
 						);

 		//load dan oper datanya;
 		$this->load->view("vserveryoutube", $data);
 	}

 }
 ?>