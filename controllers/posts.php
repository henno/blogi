<?php

class posts extends Controller
{
	function view()
	{
		if (!empty($_POST))
			$this->save();
		$post_id = $this->params[0];
		$this->post = get_one("SELECT * FROM post NATURAL JOIN user WHERE post_id='$post_id'");
		$this->tags = get_all("SELECT * FROM post_tags NATURAL JOIN tag WHERE post_id='$post_id'");
		$this->comments = get_all("SELECT * FROM post_comments NATURAL JOIN comment NATURAL JOIN user WHERE post_id='$post_id'");


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

	private function save()
	{
		insert(
			'post_comments',
			array(
				'comment_id' => insert('comment', $_POST),
				'post_id' => $this->params[0]
			)
		);
	}
}