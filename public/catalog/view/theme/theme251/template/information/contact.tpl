<?php echo $header; ?>
<div class="<?php if ($column_right) { ?>span9<?php } else {?>span12<?php } ?>">
	<div class="row">
<div class="<?php if ($column_left or $column_right) { ?>span9<?php } ?> <?php if ($column_left and $column_right) { ?>span6<?php } ?> <?php if (!$column_right and !$column_left) { ?>span12 <?php } ?>" id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
	<h2 style="display:none"><?php echo $text_location; ?></h2>
	<div class="contact-info">
		<div class="content row-fluid">
			<div class="map-left span6">      
				<div class="contact-box"><i class="icon-home"></i><b><?php echo $text_address; ?></b>
					<?php echo $address; ?>
				</div>
				<div class="contact-box">
					<?php if ($telephone) { ?>
					<i class="icon-phone"></i><b><?php echo $text_telephone; ?></b>
					<?php echo $telephone; ?>
					<?php } ?>
				</div>
				<div class="contact-box">
					<?php if ($fax) { ?>
					<i class="icon-phone"></i><b><?php echo $text_fax; ?></b>
					<?php echo $fax; ?>
					<?php } ?>
				</div>
			</div>
			<div class="map-content span6">         
				<figure>
				<iframe width="100%" height="200px" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.85272410557!2d-46.64117060000003!3d-23.64544479999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5ae7fbc58323%3A0xa04f0e93835458ed!2sAv.+Eng.+Armando+de+Arruda+Pereira%2C+2022+-+Jabaquara%2C+S%C3%A3o+Paulo+-+SP!5e0!3m2!1spt-BR!2sbr!4v1415978279455" frameborder="0" style="border:0"></iframe>
				</figure>
			</div>
		</div>
	</div>
	<div class="content contact-f form-horizontal">
		<!--<h2><?php echo $text_contact; ?></h2>-->
		<div class="control-group">
			<label class="control-label" for="name"><?php echo $entry_name; ?></label>
			<div class="controls">
				<input class="span5" type="text" name="name" value="<?php echo $name; ?>" />
				<?php if ($error_name) { ?>
				<span class="error help-inline"><?php echo $error_name; ?></span>
				<?php } ?>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="email"><?php echo $entry_email; ?></label>
			<div class="controls">
				<input class="span5" type="text" name="email" value="<?php echo $email; ?>" />
				<?php if ($error_email) { ?>
				<span class="error help-inline"><?php echo $error_email; ?></span>
				<?php } ?>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="enquiry"><?php echo $entry_enquiry; ?></label>
			<div class="controls">
				<textarea class="span5" name="enquiry" cols="40" rows="10" ><?php echo $enquiry; ?></textarea>
				<?php if ($error_enquiry) { ?>
				<span class="error help-inline"><?php echo $error_enquiry; ?></span>
				<?php } ?>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="captcha"><?php echo $entry_captcha; ?></label>
			<div class="controls">
				<input type="text" class="capcha" name="captcha" value="<?php echo $captcha; ?>" />
				<div class="captcha"><img src="index.php?route=information/contact/captcha" alt="" /></div>
				<?php if ($error_captcha) { ?>
				<span class="error help-inline"><?php echo $error_captcha; ?></span>
				<?php } ?>
				<div class="buttons"><a onclick="$('#contact').submit();" class="button"><span><?php echo $button_continue; ?></span></a></div>
			</div>
		</div>
	</div>
</form>
	<?php echo $content_bottom; ?></div>
	<?php echo $column_left; ?>
	</div>
</div>
<?php echo $column_right; ?>

<?php echo $footer; ?>