<?php echo $header; ?>
 <div class="breadcrumb">
 <div class="container">
 <h1><?php echo $heading_title; ?></h1>
 </div>
 <div id="breadcrumbs">
 <div class="container">
 <?php $zet = 100;  $counter = 0; ?>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
   
    <div id="bread" <?php if($zet == 100) echo 'class="first"' ?>style="z-index: <?php echo $zet-- ; ?>; left: <?php echo $counter * -30;?>px;">
    <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <span></span>
    </div>
    <?php $counter++; } ?>
  </div>
    </div>
   </div>
  </div> <!--  end top_container -->
  <div class="container">

<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="forgotten">
    <p><?php echo $text_email; ?></p>
    <h2><?php echo $text_your_email; ?></h2>
    <div class="content">
      <table class="form">
        <tr>
          <td><?php echo $entry_email; ?></td>
          <td><input type="text" name="email" value="" /></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a></div>
      <div class="right"><a onclick="$('#forgotten').submit();" class="button"><span><?php echo $button_continue; ?></span></a></div>
    </div>
  </form>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>