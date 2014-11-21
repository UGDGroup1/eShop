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
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <h2><?php echo $text_my_account; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
      <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
      <li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
    </ul>
  </div>
  <h2><?php echo $text_my_tracking; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
    </ul>
  </div>
  <h2><?php echo $text_my_transactions; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
    </ul>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>