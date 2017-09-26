<?php 

/**
 * 
 */
 class Ctest extends CI_Controller
 {
 	
 	function index()
 	{
 		$config = array(
 			"protocol" => "smtp",
 			"smtp_host" => "ssl://smtp.googlemail.com",
 			"smtp_port" => 465,
 			"smtp_user" => "ramdanriawan3@gmail.com",
 			"smtp_pass" => "M@utauaja982",
 			"mailtype" =>"html",
 			"charset" => "ISO-8859-1",
 			"WORDWRAP" => TRUE,
 		);

 		$this->load->library("email", $config);

 		$this->email->from("ramdanriawan3@gmail.com");
 		$this->email->to("ramdanriawan4@gmail.com");
 		$this->email->subject("email pertama");
 		$this->email->message("hallo");

 		if($this->email->send()){
 			print "success";
 		}else{
 			print $this->email->print_debugger();
 		}
 	}
 } ?>