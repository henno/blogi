<?php

class tags extends Controller{


	function index(){
		$this->tags = get_all("SELECT tag_name,count(post_id) as count FROM post_tags NATURAL JOIN tag GROUP BY tag_id");
}

	function view (){
		$tag_name = $this->params[0];
		$this->tag = get_one("SELECT * FROM tag WHERE tag_name='$tag_name'");
		$this->posts = get_all("SELECT * FROM post_tags NATURAL JOIN post NATURAL JOIN tag WHERE tag_name='$tag_name'");

		$_tags = get_all("SELECT * FROM post_tags NATURAL JOIN tag");
		foreach ($_tags as $tag) {
			$this->tags[$tag['post_id']][] = $tag['tag_name'];
		}


	}


}
