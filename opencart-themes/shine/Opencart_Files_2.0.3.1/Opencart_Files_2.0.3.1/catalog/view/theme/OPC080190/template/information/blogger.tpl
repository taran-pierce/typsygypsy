<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> single-blog"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($blogs['image']) { ?>
	  		<div class="blog-img">
	  			<img src="<?php echo $blogs['image']; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" />
	  		</div>
	  <?php } ?>
	  
	  <div class="blog-desc"> <?php echo $description; ?> </div>
      <?php if ($success) { ?>
      <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
      <?php } ?>
      <?php if ($blog_comments) { ?>
      <h3><?php echo $text_your_comments; ?></h3>
      <?php foreach ($blog_comments as $blog_comment) { ?>
      <div class="view-comment">
	  <div class="panel panel-default" style="margin-bottom: 10px; padding-top: 5px;">
        <div class="row">
          <div class="form-group">
            <?php /*?><label class="col-sm-3 control-label text-right"><b><?php echo $entry_author; ?></b></label><?php */?>
            <div class="col-sm-3 author"><?php echo $blog_comment['author']; ?></div>
            <?php /*?><label class="col-sm-3 control-label text-right"><b><?php echo $text_date_added; ?></b></label><?php */?>
            <div class="col-sm-3 date"><i class="fa fa-calendar-o"></i><?php echo $blog_comment['date_added']; ?></div>
			<div class="col-sm-8 comment"><?php echo $blog_comment['comment']; ?></div>
          </div>
        </div>
        <?php /*?><div class="row">
          <div class="form-group">
            <label class="col-sm-3 control-label text-right"><b><?php echo $entry_comment; ?></b></label>
            <div class="col-sm-8"><?php echo $blog_comment['comment']; ?></div>
          </div>
        </div><?php */?>
      </div>
	  </div>
      <?php } ?>
      <?php } ?>
      <?php if ($allow_comments) { ?>
	  <div class="block-title"><h3><?php echo $button_comment_add; ?></h3></div>
      <div class="panel panel-default" id="add-comment" style="margin-bottom: 10px; padding: 0px 0px;">
        <?php if ($login_required && !$is_logged) { ?>
        <h4 class="text-center"><?php echo $text_login_required; ?></h4>
        <?php } else { ?>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
          <div class="form-group required" style="margin-top: 10px;">
            <label class="col-sm-3 control-label" for="input-author"><b><?php echo $entry_author; ?></b></label>
            <div class="col-sm-8">
              <input type="text" name="author" value="<?php echo $author; ?>" id="input-author" placeholder="<?php echo $entry_author; ?>" class="form-control" />
              <?php if ($error_author) { ?>
              <div class="text-danger"><?php echo $error_author; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required" style="margin-top: 10px;">
            <label class="col-sm-3 control-label" for="input-email"><b><?php echo $entry_email; ?></b></label>
            <div class="col-sm-8">
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" placeholder="<?php echo $entry_email; ?>" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group" style="margin-top: 10px;">
            <label class="col-sm-3 control-label" for="input-comment"><b><?php echo $entry_comment; ?></b></label>
            <div class="col-sm-8">
              <textarea name="comment" rows="10" id="input-comment" class="form-control" /><?php echo $comment; ?></textarea>
              <?php if ($error_comment) { ?>
              <div class="text-danger"><?php echo $error_comment; ?></div>
              <?php } ?>
			  <input type="hidden" name="auto_approve" value="<?php echo $auto_approve; ?>" />
          	<div class="buttons text-left"><input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" title="<?php echo $button_submit; ?>" /></div>
            </div>
          </div>
          <?php if ($site_key) { ?>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
              <?php if ($error_captcha) { ?>
                <div class="text-danger"><?php echo $error_captcha; ?></div>
              <?php } ?>
            </div>
          </div>
          <?php } ?>
        </form>
        <?php } ?>
      </div>
      <?php /*?><div class="buttons text-right"><button type="button" onclick="$('#add-comment').slideToggle();" class="btn btn-primary"><?php echo $button_comment_add; ?></button></div><?php */?>
      <?php } ?>
    <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>