<?php

class posts extends Controller{

	function index(){
		$this->posts = get_all("SELECT * FROM post");
		$this->users = get_all("SELECT * FROM user");
	}
}