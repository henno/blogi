<?foreach($posts as $post):?>
<div class="span8">
	<a href="<?=BASE_URL?>posts/view/<?=$post['post_id']?>"><h1><?=$post['post_subject']?></h1></a>
	<p><?=$post['post_text']?></p>
	<div>
		<span class="badge badge-success"><?=$post['post_created']?></span>
		<div class="pull-right">
	<?foreach ($tags[$post['post_id']] as $tag):?>
		<a href="#"><span class="label" style="background-color: #5bc0de"><?=$tag?></span></a> <? endforeach?>
		</div>
	</div>
	<hr>
</div>
<?endforeach?>