<?php if (!defined('THINK_PATH')) exit();?>
<div class="comment-area" id="joinus" >
	  <?php
if(!$isJoinUs){ ?>
	<form class="form-horizontal comment-form" action="<?php echo u('JoinUs/JoinUs/post');?>" method="post">
	 尚未报名
	  <div class="control-group">

	   		<button type="submit" class="btn pull-right btn-primary J_ajax_submit_btn"><i class="fa fa-comment-o"></i> 我要报名</button>
			
	  </div>
	  
	  <input type="hidden" name="post_table" value="<?php echo ($post_table); ?>"/>
	  <input type="hidden" name="post_id" value="<?php echo ($post_id); ?>"/>
	  <input type="hidden" name="to_uid" value="0"/>
	  <input type="hidden" name="parentid" value="0"/>
	</form>
			  <?php
 } else{?>
	<form class="form-horizontal comment-form" action="/index.php?g=JoinUs&m=JoinUs&a=cancel" method="post">
	 已报名，点击取消报名，取消您的报名。
	  <div class="control-group">

	   		<button type="submit" class="btn pull-right btn-primary J_ajax_submit_btn"><i class="fa fa-comment-o"></i>取消报名</button>
			
	  </div>
	  
	  <input type="hidden" name="post_table" value="{$post_table}"/>
	  <input type="hidden" name="post_id" value="<?php echo ($post_id); ?>"/>
	  <input type="hidden" name="to_uid" value="0"/>
	  <input type="hidden" name="parentid" value="0"/>
	</form>
<?php
 } ?>
	
	
	</div>