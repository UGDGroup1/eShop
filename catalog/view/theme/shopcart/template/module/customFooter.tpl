<?php
function ae_detect_ie()
{
 if(preg_match('/(?i)msie [1-7]/',$_SERVER['HTTP_USER_AGENT'])) {
		return 'facebookIE.css';
  } else {
		return 'facebook.css';
  }  
 }
?>

<div class="clear"></div>
<div id="footer-top-outside">
<div id="customHome" class="container_12"><?php
if ($about_status == '1') :
?>
<div id="about_us_footer"
	class="grid_<?php
		echo 12 / $custom_footer_active_columns;
		?>">
<h2><?php
echo $about_header;
?></h2>
<?php
if($this->config->get('about_us_image_status') == '1'){
	echo '<img class="about_us_image" alt="small logo" src="'. HTTPS_IMAGE . $this->config->get('about_us_image') . '"/>';
}
?>
<p><?php
echo html_entity_decode($about_text);
?></p>
</div>
<?php endif;
?> <!--  TWITTER --> <?php if($twitter_column_status == '1'): ?>
<div id="twitter_footer"
	class="grid_<?php echo 12 / $custom_footer_active_columns; ?>">
<h2><?php echo $twitter_column_header ; ?></h2>
<ul id="twitter_update_list">
<script type="text/javascript"
	src="//twitter.com/javascripts/blogger.js"></script> <script
	type="text/javascript"
	src="//twitter.com/statuses/user_timeline/<?php echo $twitter_username ; ?>.json?callback=twitterCallback2&count=<?php echo $twitter_number_of_tweets ; ?>"></script>
</ul>
</div>
<?php endif; ?> <?php
if ($contact_status == '1') {
	?>
<div id="contact_footer"
	class="grid_<?php
		echo 12 / $custom_footer_active_columns;
		?>">
<h2><?php
echo $contact_header;
?></h2>
<ul>
<li>
	<!-- TELEPHONE 1 -->
<?php if (! empty ( $telephone1 )) {	?>
	<ul id="tel" class="contact_column">
		<li id="footer_telephone"><?php	echo $telephone1;?></li>


		<!-- TELEPHONE 2 -->
		<?php if (! empty ( $telephone2 )) {	?>
		<li id="footer_telephone2"><?php	echo $telephone2;?></li>
		<?php	} ?>
	</ul>
	<?php	} ?>

	<!-- FAX  -->
	<?php if (! empty ( $fax )) {	?>
	<ul id="fax" class="contact_column">
		<li id="footer_fax"><?php	echo $fax;?></li>
	</ul>
	<?php	} ?>

	<!-- EMAIL 1 -->
	<?php if (! empty ( $email1 )) {	?>
	<ul id="mail" class="contact_column">
		<li id="footer_email"><?php	echo $email1;?></li>



		<!-- EMAIL 2 -->
		<?php if (! empty ( $email2 )) {	?>
		<li id="footer_email2"><?php	echo $email2;?></li>
		<?php	} ?>
	</ul>
	<?php	} ?>

	<!-- SKYPE -->
	<?php if (! empty ( $skype )) {	?>
	<ul id="skype" class="contact_column">
		<li id="footer_skype"><?php	echo $skype;?></li>
	</ul>
	<?php	} ?>
</li>
</ul>
</div>
	<?php
}
?> <!--  FACEBOOK --> <?php
if ($facebook_status == '1') {
	?>
<div id="facebook_footer"
	class="grid_<?php
		echo 12 / $custom_footer_active_columns;
		
 ?>
">
<h2>Facebook</h2>
<script type="text/javascript"
	src="//static.ak.connect.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php/en_US"></script>
<script type="text/javascript">FB.init("1690883eb733618b294e98cb1dfba95a");</script>

<script language="javascript" type="text/javascript">
//<![CDATA[
document.write('<fb:fan profile_id="<?php echo $facebook_id; ?>" stream="0"	connections="<?php echo 12 / $custom_footer_active_columns * 2; ?>"	logobar="0" height="220px"	width="<?php echo (12 / $custom_footer_active_columns*80) - 20; ?>"css="<?php echo HTTPS_SERVER; ?>catalog/view/theme/shopcart/stylesheet/<?php echo ae_detect_ie(); ?>?20"></fb:fan> ');
//]]>
</script>

</div>
<?php } ?> <!--  CUSTOM COLUMN --> <?php
if ($custom_footer_column_status == '1') {
	?>
<div id="custom_column_footer"
	class="grid_<?php
		echo 12 / $custom_footer_active_columns; ?>	?>">
<h2><?php echo $custom_footer_column_header; ?></h2>
<p><?php echo html_entity_decode($custom_footer_column_content); ?></p>
</div>
<?php } ?> <!-- Categories --> <?php
if ($categories_column_status == '1') :
?>
<div id="categories_footer"
	class="grid_<?php
		echo 12 / $custom_footer_active_columns;
		?>">
<h2><?php
echo $categories_text;
?></h2>
<?php
$this->language->load('module/category');

$this->load->model('catalog/category');
$results = $this->model_catalog_category->getCategories();
if ($results) {$output = '<ul>';}
foreach ($results as $result) {
	$new_path = $result['category_id'];
	$unrewritten = HTTP_SERVER.'index.php?route=product/category&path=' . $new_path;

	$output .= '<li><a href="'.str_replace('&', '&amp;', $unrewritten).'">'.$result['name'].'</a></li>';
}
if ($results) {$output .= '</ul>';}
echo $output;
?></div>
<?php endif; ?></div>
</div>
