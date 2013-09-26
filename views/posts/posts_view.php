<div class="row">
	<div class="span8">
		<div class="row">
			<div class="span8">
				<h4><strong><a href="<?=BASE_URL?>posts/view/<?=$post['post_id']?>"><?=$post['post_subject']?></a></strong></h4>
			</div>
		</div>
		<div class="row">
			<div class="span8">
				<p>
					<?=$post['post_text']?>
				</p>
			</div>
		</div>
		<div class="row">
			<div class="span8">
				<p></p>
				<p>
					<i class="icon-user"></i> by <a href="#"><?=$post['username']?></a>
					| <i class="icon-calendar"></i> <?=$post['post_created']?>
					| <i class="icon-tags"></i> Tags : <?foreach ($tags as $tag):?><a href="<?=BASE_URL?>tags/view/<?=$tag['tag_name']?>"><span class="label label-info"><?=$tag['tag_name']?></span></a> <?endforeach?>
				</p>
			</div>
		</div>
	</div>
</div>
<hr>
<?foreach ($comments as $comment) :?>

<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title"><?=$post['username']?></h3>
		<?=$comment['comment_time']?>
	</div>
	<div class="panel-body">
		<?=$comment['comment_text']?>
	</div>
</div>
<?endforeach?>

<div class="span8 well">
	<form accept-charset="UTF-8" action="" method="POST">
		<textarea class="col-md-8" id="new_message" name="new_message"
				  placeholder="Type in your message" rows="5"></textarea>
		<button class="btn btn-info" type="submit">Post Comment</button>
	</form>
</div>
