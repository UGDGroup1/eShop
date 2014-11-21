<?php
echo $header;
?>
<div id="content">
<?php

if ($error_warning) {
	?>
<div class="warning"><?php
	echo $error_warning;
	?></div>
<?php
}
?>
<div class="box">

<div class="heading">
<h1><?php
echo $heading_title;
?></h1>
<div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php
echo $button_save;
?></span></a><a onclick="location = '<?php
echo $cancel;
?>';"
	class="button"><span><?php
	echo $button_cancel;
	?></span></a></div>
</div>

<form action="<?php
echo $action;
?>" method="post"
	enctype="multipart/form-data" id="form">
	</br>
<td>Custom Footer Module Status: </td>
		<select name="customFooter_status">
              <?php
														if ($customFooter_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select>
            </br></br>
<div id="tabs" class="htabs"><a href="#tab_about">About Us</a><a
	href="#tab_contact">Contact</a><a href="#tab_facebook">Facebook</a><a
	href="#tab_custom">Custom</a><a
	href="#tab_twitter">Twitter</a><a
	href="#tab_categories">Categories</a></div>


<div id="tab_about">
<table class="form">
	<tr>
		<td>About Us Column Status</td>
		<td><select name="about_status">
              <?php
														if ($about_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td>Header text:</td>
		<td><input type="text" name="about_header"
			value="<?php
			echo $about_header;
			?>"></td>
	</tr>

	<tr>
		<td>About text:</td>
		<td><textarea name="about_text" rows="10" cols="50"> <?php
		echo $about_text;
		?></textarea>
		</td>
	</tr>
	<tr>
 <td>Image: </br>
           <?php 
           if(isset($about_us_image_status) && $about_us_image_status == '1'){
           	 ?>
           	 <input type="radio"  name="about_us_image_status" value="1" CHECKED/> Yes<br />
			<input type="radio" name="about_us_image_status" value="0"> No
           	<?php 
           }     else {   ?>
           <input type="radio"  name="about_us_image_status" value="1" /> Yes<br />
			<input type="radio" name="about_us_image_status" value="0" CHECKED> No
         <?php   } ?>
           </td>
	<td>
             
              <input type="hidden" name="about_us_image" value="<?php echo $about_us_image; ?>" id="about_us_image" />
                <img src="<?php echo $about_us_image_preview; ?>" alt="" id="about_us_image_preview" class="image" onclick="image_upload('about_us_image', 'about_us_image_preview');" /></td>         
          </td>
	
	
	</tr>

</table>
</div>

<div id="tab_contact">
<table class="form">
	<tr>
		<td>Contact Column Status</td>
		<td><select name="contact_status">
              <?php
														if ($contact_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr> Fill in the contact details you want to be displayed in your store front-end. If you don't want some of contact details to be displayed, just leave these fields empty</tr>
	
		<tr>
		<td>Column header name:</td>
		<td><input type="text" name="contact_header"
			value="<?php
			echo $contact_header;
			?>"></td>
	</tr>
	
	
	<tr>
		<td>Telephone 1:</td>
		<td><input type="text" name="telephone1"
			value="<?php
			echo $telephone1;
			?>"></td>
	</tr>

	<tr>
		<td>Telephone 2:</td>
		<td><input type="text" name="telephone2"
			value="<?php
			echo $telephone2;
			?>"></td>
	</tr>
	
		<tr>
		<td>Fax</td>
		<td><input type="text" name="fax"
			value="<?php
			echo $fax;
			?>"></td>
	</tr>
	
	
	<tr>
		<td>E-mail 1:</td>
		<td><input type="text" name="email1"
			value="<?php
			echo $email1;
			?>"></td>
	</tr>

	<tr>
		<td>E-mail 2:</td>
		<td><input type="text" name="email2"
			value="<?php
			echo $email2;
			?>"></td>
	</tr>
	
	<tr>
		<td>Skype:</td>
		<td><input type="text" name="skype"
			value="<?php
			echo $skype;
			?>"></td>
	</tr>
	

</table>
</div>

<div id="tab_facebook">
<table class="form">
	
	<tr>
		<td>Facebook Column Status</td>
		<td><select name="facebook_status">
              <?php
														if ($facebook_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	
		<tr>
		<td>Facebook page ID:</td>
		<td><input type="text" name="facebook_id"
			value="<?php
			echo $facebook_id;
			?>"></td>
	</tr>
	
	
</table>
</div>
<div id="tab_custom">
<table class="form">
	<tr>
		<td>Custom Footer Column Status</td>
		<td><select name="custom_footer_column_status">
              <?php
														if ($custom_footer_column_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	
	<tr>
		<td>Custom column header name: </td>
		<td><input type="text" name="custom_footer_column_header"
			value="<?php
			echo $custom_footer_column_header;
			?>"></td>
	</tr>
	
		<tr>
		<td>Content: </td>
		<td>
		<textarea name="custom_footer_column_content" rows="10" cols="40"><?php echo $custom_footer_column_content; ?></textarea>
		</td>
	</tr>
</table>
</div>

<div id="tab_twitter">
<table class="form">
	<tr>
		<td>Twitter Column Status</td>
		<td><select name="twitter_column_status">
              <?php
														if ($twitter_column_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	
	<tr>
		<td>Twitter column header name: </td>
		<td><input type="text" name="twitter_column_header"
			value="<?php
			echo $twitter_column_header;
			?>"></td>
	</tr>
	
		<tr>
		<td>
            <label style="width: 110px">Tweets number</label></td><td>
            <select name="twitter_number_of_tweets">
              <option value="1"<?php if($twitter_number_of_tweets == '1') echo ' selected="selected"';?>>1</option>
              <option value="2"<?php if($twitter_number_of_tweets == '2') echo ' selected="selected"';?>>2</option>
              <option value="3"<?php if($twitter_number_of_tweets == '3') echo ' selected="selected"';?>>3</option>
            </select></td>
         </tr>

          <tr><td>
            <label style="width: 110px">Twitter username: </label></td>
            <td><input type="text" name="twitter_username" value="<?php echo $twitter_username; ?>" /></td>
          </tr>
		
		
		
	</tr>
</table>
</div>

<div id="tab_categories">
<table class="form">
	<tr>
		<td>Categories Column Status</td>
		<td><select name="categories_column_status">
              <?php
														if ($categories_column_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	</table>
	</div>

</form>
</div>
</div>
</div>
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 



<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" class="image" onclick="image_upload(\'' + field + '\', \'' + preview + '\');" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 

<?php
echo $footer;
?>