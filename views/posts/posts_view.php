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
					| <i class="icon-tags"></i> Tags : <a href="#"><span class="label label-info">Snipp</span></a>
				</p>
			</div>
		</div>
	</div>
</div>
<hr>