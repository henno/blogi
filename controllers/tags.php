<?php

class tags extends Controller{

	function index(){
		$this->tags = get_all("SELECT * FROM tag");
}
}
