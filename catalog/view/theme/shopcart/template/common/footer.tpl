<div id="footer-border">

</div>

<?php 
$displayCustomFooter =  $this->config->get('customFooter_status');


if($displayCustomFooter == 1) {


echo $customFooter; 
}
?>
 <div class="container_12">
  <div id="footer">
    <div class="grid_3">
      <h3><?php echo $text_information; ?></h3>
      <ul>
        <?php foreach ($informations as $information) { ?>
        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
    <div class="grid_3">
      <h3><?php echo $text_service; ?></h3>
      <ul>
        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      </ul>
    </div>
    <div class="grid_3">
      <h3><?php echo $text_extra; ?></h3>
      <ul>
        <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
        <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
        <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
        <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
      </ul>
    </div>
    <div class="grid_3">
      <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
    </div>
  </div>
  
  <div class="spacer clearfix"></div>

</div>
  <div id="powered">
  <div class="container">
  <div id="payment_images">
  
  <img src="catalog/view/theme/shopcart/image/payment.png" alt="payment methods"/>
  <br/>
	Payment protocols are still under counstruction!
<hr>
<h3>Banks Supported</h3>
<img src="<?php echo HTTP_IMAGE ?>data/banks/k.png" alt="Komrcijalna banka"/>
<br/>
<img src="<?php echo HTTP_IMAGE ?>data/banks/procredit.jpg" alt="Komrcijalna banka"/>
<br/>
<img src="<?php echo HTTP_IMAGE ?>data/banks/halk.jpg" alt="Komrcijalna banka"/>
  </div>
  
  <div id="powered_text">
        <b>Mentor</b> - <a href="#">Zoran Zdravev</a>
		<br/>
		<fieldset>
		<h3>Group 1 - Strumica / <a href="#" style="font-size: 18px;">Meet out Team</a></h3>
		<table border="0" cellspacing="10">
		<tr>
        <td><b>CEO / Developer</b></td> <td align="left"><a href="#">Andrea Andreev</a></td>
		</tr>
		<tr>
        <td><b>CTO / Developer</b></td><td align="left"><a href="#">Atanas Janev</a></td>
		</tr>
		<tr>
        <td><b>Designer / Developer</b></td><td align="left"><a href="#">Nikola Karamazicev</a></td>
		</tr>
		<tr>
        <td><b>Tester / Developer</b></td><td align="left"><a href="#">Ivan Kocev</a></td>
		</tr>
		</table>
		<hr>
		<div style="width:300px; text-align: center;">
		Demo v1.0 due date: <b>30/01/2012</b>
		<br/>
		Presentation date: <b> -- <i>not set</i> --</b>
		<hr>
		<span>Note. Because this project is our seminar paper you can get the whole code from <a href="#">github</a> or just monitor the development process. The presentation date is on DD/MM/YYYY, feel free to come and support us.</span>
		</fieldset>
        </div>
		</div>
</div>
</body></html>
