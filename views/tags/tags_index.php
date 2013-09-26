<div class="list-group">
	<a href="#" class="list-group-item active">
		Tags
	</a>
	<?foreach($tags as $tag):?>
	<a href="<?=BASE_URL?>tags/view/" class="list-group-item"><span class="badge">14</span>
		<?=$tag['tag_name']?>
	</a>
	<?endforeach?>
</div>
