<?php

class posts extends Controller
{
	function view()
	{
		$post_id = $this->params[0];
		$this->post = get_one("SELECT * FROM post NATURAL JOIN user WHERE post_id='$post_id'");
		$this->tags = get_all("SELECT * FROM post_tags NATURAL JOIN tag WHERE post_id='$post_id'");
		$this->comments = get_all("SELECT * FROM post_comments NATURAL JOIN comment WHERE post_id='$post_id'");


	}

	function index()
	{
		$this->posts = get_all("SELECT * FROM post");
		$this->users = get_all("SELECT * FROM user");

		// prepare tags array
		$_tags = get_all("SELECT * FROM post_tags NATURAL JOIN tag");
		foreach ($_tags as $tag) {
			$this->tags[$tag['post_id']][] = $tag['tag_name'];
		}


	}
}