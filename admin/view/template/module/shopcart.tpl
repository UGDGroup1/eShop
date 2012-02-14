<?php echo $header; ?>
<div id="content" class="shopcart">
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>


       <?php 
        
       // set default values if no values were entered
           
        if(empty($shopcart_color_a)) {
        	$shopcart_color_a ="3d3d3d";
        }
        
        
           if(empty($shopcart_color_b)) {
        	$shopcart_color_b ="767676";
        }
        
        
           if(empty($shopcart_color_c)) {
        	$shopcart_color_c ="df476e";
        }
        
           if(empty($shopcart_links_a_color)) {
        	$shopcart_links_a_color ="df476e";
        }
              
         if(empty($shopcart_links_b_color)) {
        	$shopcart_links_b_color ="3d3d3d";
        }
        
        
         if(empty($shopcart_links_hover_color)) {
        	$shopcart_links_hover_color ="767676";
        }
        
         if(empty($shopcart_menu_links_color)) {
        	$shopcart_menu_links_color ="4b4b4b";
        }
        
         if(empty($shopcart_menu_bg_color)) {
        	$shopcart_menu_bg_color ="df476e";
        }
        
          if(empty($shopcart_top_bg_color)) {
        	$shopcart_top_bg_color ="e1f6fd";
        }
        
        
          if(empty($shopcart_top_menu_bg)) {
        	$shopcart_top_menu_bg ="f3fbfe";
        }
        
           if(empty($shopcart_breadcrumbs_bg_color)) {
        	$shopcart_breadcrumbs_bg_color ="b8d6e1";
        }
        
           if(empty($shopcart_footer_bg_color)) {
        	$shopcart_footer_bg_color ="ececec";
        }
            if(empty($shopcart_button_normal_a)) {
        	$shopcart_button_normal_a ="c9e181";
        }
		 if(empty($shopcart_button_normal_b)) {
        	$shopcart_button_normal_b ="9fcb55";
        }
         if(empty($shopcart_button_hover_a)) {
        	$shopcart_button_hover_a ="eb6399";
        }
        if(empty($shopcart_button_hover_b)) {
        	$shopcart_button_hover_b ="dc4164";
        }
        
          if(empty($shopcart_promo_price)) {
        	$shopcart_promo_price = "b20f39";
        }
        
          if(empty($shopcart_normal_price)) {
        	$shopcart_normal_price ="df476e";
        }
        
          if(empty($shopcart_old_price)) {
        	$shopcart_old_price ="a4a4a4";
        }
           if(empty($shopcart_button_text_color)) {
        	$shopcart_button_text_color ="6f8339";
        }
           if(empty($shopcart_button_text_color_hover)) {
        	$shopcart_button_text_color_hover ="fff";
        }
 
        ?>
<div class="box">
  <div class="heading">
   <h1> <img src="view/image/shopcart.png" /></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
  </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <table class="form">
      <tr>
      <b>Welcome to shopcart theme options panel</b>. In this section, you can change the way your store looks like. To change the colour of corresponding element, just <b>click inside text field</b> and this will bring up colour picker. Then just choose the colour you like, <b>click little circled icon</b> (bottom right of the colour picker). When you're happy with your choices, don't forget to <b>click 'Save'</b> on top right of this page.
      <br><br>Remember, that changes will be visible <b>only</b> if you select 'enabled' from the first drop-down below. 
      <br><br>If you are not happy with your colour choices and want them to be reverted to default value, just remove the hex value from this text field (leave it empty) and click 'Save'. 
      </tr>
        <tr>
        
        <td><b>Disable / enable custom colour options? </b></td>
        <td>
		<select name="shopcart_status">
              <?php
														if ($shopcart_status) {
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
            </td>
            </tr>
        
      
        <tr>
        
     <tr>
          <td><b>Text colours</b></td>
          <td></td>
        </tr>
        
          <td>Primary colour (footer headers):</td>
          <td>#<input id="shopcart_color_a" type="text" name="shopcart_color_a" value="<?php echo $shopcart_color_a; ?>" ></td>
        </tr>
        
               
        <tr>
          <td>Secondary colour (paragraphs):</td>
          <td>#<input id="shopcart_color_b" type="text" name="shopcart_color_b" value="<?php echo $shopcart_color_b; ?>" ></td>
        </tr>
        
            <tr>
          <td>Header colour:</td>
          <td>#<input id="shopcart_links_b_color" type="text" name="shopcart_links_b_color" value="<?php echo $shopcart_links_b_color; ?>" ></td>
        </tr>
        
                <tr>
          <td>Secondary colour (column headers):</td>
          <td>#<input id="shopcart_color_c" type="text" name="shopcart_color_c" value="<?php echo $shopcart_color_c; ?>" ></td>
        </tr>
                
         <tr>
          <td><b>Links colours</b></td>
          <td></td>
        </tr>
        
            <tr>
          <td>Primary links:</td>
          <td>#<input id="shopcart_links_a_color" type="text" name="shopcart_links_a_color" value="<?php echo $shopcart_links_a_color; ?>" ></td>
        </tr>
        
    
        
           <tr>
          <td>Links colour on hover:</td>
          <td>#<input id="shopcart_links_hover_color" type="text" name="shopcart_links_hover_color" value="<?php echo $shopcart_links_hover_color; ?>" ></td>
        </tr>
        
           <tr>
          <td>Menu links colour:</td>
          <td>#<input id="shopcart_menu_links_color" type="text" name="shopcart_menu_links_color" value="<?php echo $shopcart_menu_links_color ; ?>" ></td>
        </tr>
        
    
        
          <tr>
          <td>Top menu background on hover colour</td>
          <td>#<input id="shopcart_menu_bg_color" type="text" name="shopcart_menu_bg_color" value="<?php echo $shopcart_menu_bg_color ; ?>" ></td>
        </tr>
        
        
         <tr>
          <td><b>Header and footer</b></td>
          <td></td>
        </tr>
        
          <tr>
          <td>Main background colour</td>
          <td>#<input id="shopcart_top_bg_color" type="text" name="shopcart_top_bg_color" value="<?php echo $shopcart_top_bg_color ; ?>" ></td>
        </tr>
        
            <tr>
          <td>Header background (menu and shopping cart)</td>
          <td>#<input id="shopcart_top_menu_bg" type="text" name="shopcart_top_menu_bg" value="<?php echo $shopcart_top_menu_bg ; ?>" ></td>
        </tr>
        
         <tr>
          <td>Breadcrumbs background</td>
          <td>#<input id="shopcart_breadcrumbs_bg_color" type="text" name="shopcart_breadcrumbs_bg_color" value="<?php echo $shopcart_breadcrumbs_bg_color ; ?>" ></td>
        </tr>

           <tr>
          <td>Footer background</td>
          <td>#<input id="shopcart_footer_bg_color" type="text" name="shopcart_footer_bg_color" value="<?php echo $shopcart_footer_bg_color ; ?>" ></td>
        </tr>
        
        
             <tr>
          <td><b>Buttons</b></td>
          <td></td>
        </tr>
        
         <tr>
          <td>Button - text colour</td>
          <td>#<input id="shopcart_button_text_color" type="text" name="shopcart_button_text_color" value="<?php echo $shopcart_button_text_color ; ?>" ></td>
        </tr>
        
           <tr>
          <td>Button - top gradient colour</td>
          <td>#<input id="shopcart_button_normal_a" type="text" name="shopcart_button_normal_a" value="<?php echo $shopcart_button_normal_a ; ?>" ></td>
        </tr>
        
           <tr>
          <td>Button - bottom gradient colour</td>
          <td>#<input id="shopcart_button_normal_b" type="text" name="shopcart_button_normal_b" value="<?php echo $shopcart_button_normal_b ; ?>" ></td>
        </tr>
        
        
          <tr>
          <td>Button (hover) - text colour</td>
          <td>#<input id="shopcart_button_text_color_hover" type="text" name="shopcart_button_text_color_hover" value="<?php echo $shopcart_button_text_color_hover ; ?>" ></td>
        </tr>
           <tr>
          <td>Button (hover) - top gradient colour</td>
          <td>#<input id="shopcart_button_hover_a" type="text" name="shopcart_button_hover_a" value="<?php echo $shopcart_button_hover_a ; ?>" ></td>
        </tr>
        
           <tr>
          <td>Button (hover) - bottom gradient colour</td>
          <td>#<input id="shopcart_button_hover_b" type="text" name="shopcart_button_hover_b" value="<?php echo $shopcart_button_hover_b ; ?>" ></td>
        </tr>
        
              <tr>
          <td><b>Prices</b></td>
          <td></td>
        </tr>
        
              <tr>
          <td>Sale price</td>
          <td>#<input id="shopcart_promo_price" type="text" name="shopcart_promo_price" value="<?php echo $shopcart_promo_price ; ?>" ></td>
        </tr>
             <tr>
          <td>Normal price</td>
          <td>#<input id="shopcart_normal_price" type="text" name="shopcart_normal_price" value="<?php echo $shopcart_normal_price ; ?>" ></td>
        </tr>
        
        
        
        
        
              <tr>
          <td>Old price</td>
          <td>#<input id="shopcart_old_price" type="text" name="shopcart_old_price" value="<?php echo $shopcart_old_price ; ?>" ></td>
        </tr>
        
        
             <tr>
          <td><b>Background patterns</b></td>
          <td></td>
        </tr>
        
        
            <tr>
          <td>Top background pattern
             <p>Current pattern: <?php if (isset($shopcart_top_bg_image)) {
                	echo '<b>';
            	echo $shopcart_top_bg_image;
            }
            else {
            	
            	echo 'No pattern';
            }
            echo '</b>';
            ?>
          </p>
          
          </td>
          <td>
          <select name="shopcart_top_bg_image">
          
              <option value="no_pattern"selected="selected">No_pattern</option>

<?php 

for ($i = 1; $i <= 18; $i++) {
	
	echo '<option value="'. $i . '">' . $i .'</option>';
}
?>
            </select>  
            </td>  
            </tr> 
            <tr>   
           <td>Upload your own background pattern: </br>
           <?php 
           if(isset($own_bg_image) && $own_bg_image == '1'){
           	 ?>
           	 <input type="radio"  name="own_bg_image" value="1" CHECKED/> Yes<br />
			<input type="radio" name="own_bg_image" value="0"> No
           	<?php 
           }     else {   ?>
           <input type="radio"  name="own_bg_image" value="1" /> Yes<br />
			<input type="radio" name="own_bg_image" value="0" CHECKED> No
         <?php   } ?>
           </td>
              <td>
             
              <input type="hidden" name="own_image" value="<?php echo $own_image; ?>" id="own_image" />
                <img src="<?php echo $shopcart_preview; ?>" alt="" id="shopcart_preview" class="image" onclick="image_upload('own_image', 'shopcart_preview');" /></td>         
          </td>
        </tr>
        
              <tr>   
           <td>Upload your image as full size background </br>
           <?php 
           if(isset($own_full_bg_image) && $own_full_bg_image == '1'){
           	 ?>
           	 <input type="radio"  name="own_full_bg_image" value="1" CHECKED/> Yes<br />
			<input type="radio" name="own_full_bg_image" value="0"> No
           	<?php 
           }     else {   ?>
           <input type="radio"  name="own_full_bg_image" value="1" /> Yes<br />
			<input type="radio" name="own_full_bg_image" value="0" CHECKED> No
         <?php   } ?>
           </td>
              <td>
             
              <input type="hidden" name="own_full_image" value="<?php echo $own_full_image; ?>" id="own_full_image" />
                <img src="<?php echo $shopcart_full_preview; ?>" alt="" id="shopcart_full_preview" class="image" onclick="image_upload('own_full_image', 'shopcart_full_preview');" /></td>         
          </td>
        </tr>
        
        
        
       
                <tr>
          <td>Body font (generic)</td>
          <td>
          <select name="shopcart_body_font">

              <?php if (isset($shopcart_body_font)) {
              $selected = "selected";
              ?>
              <option value="Arial" <?php if($shopcart_body_font=='Arial'){echo $selected;} ?>>Arial</option>
              <option value="Verdana" <?php if($shopcart_body_font=='Verdana'){echo $selected;} ?>>Verdana</option>
              <option value="Helvetica" <?php if($shopcart_body_font=='Helvetica'){echo $selected;} ?>>Helvetica</option>
              
              <option value="Lucida Grande" <?php if($shopcart_body_font=='Lucida Grande'){echo $selected;} ?>>Lucida Grande</option>
              <option value="Trebuchet MS" <?php if($shopcart_body_font=='Helvetica'){echo $selected;} ?>>Trebuchet MS</option>
              <option value="Times New Roman" <?php if($shopcart_body_font=='Times New Roman'){echo $selected;} ?>>Times New Roman</option>
              <option value="Tahoma" <?php if($shopcart_body_font=='Tahoma'){echo $selected;} ?>>Tahoma</option>
              <option value="Georgia" <?php if($shopcart_body_font=='Georgia'){echo $selected;} ?>>Georgia</option>
                           
              <?php } else { ?>
              <option value="Arial"selected="selected">Arial</option>
              <option value="Verdana">Verdana</option>    
           <option value="Helvetica">Helvetica</option>
              <option value="Lucida Grande">Lucida Grande</option>
             <option value="Trebuchet MS">Trebuchet MS</option>
            <option value="Times New Roman">Times New Roman</option>
             <option value="Tahoma">Tahoma</option>
            <option value="Georgia">Georgia</option>
              
              <?php } ?>
            </select>        
          </td>
        </tr>    
                   <tr>   
           <td>Body font(Google fonts) </br>
           <?php 
           if(isset($google_body_font) && $google_body_font == '1'){
           	 ?>
           	 <input type="radio"  name="google_body_font" value="1" CHECKED/> Yes<br />
			<input type="radio" name="google_body_font" value="0"> No
           	<?php 
           }     else {   ?>
           <input type="radio"  name="google_body_font" value="1" /> Yes<br />
			<input type="radio" name="google_body_font" value="0" CHECKED> No
         <?php   } ?>
          <p>Current font: <?php if (isset($google_body_font2)) {
                	echo '<b>';
            	echo $google_body_font2;
            }
            else {
            	
            	echo 'No specified';
            }
            echo '</b>';
            ?>
          </p>
           </td>
              <td>
              <select name="google_body_font2">

  
              <option value="Open+Sans" >Open Sans</option>
                <option value="PT+Sans" >PT Sans</option>
                 <option value="Antic" >Antic</option>
                     <option value="Numans" >Numans</option>
                         <option value="Podkova" >Podkova</option>
                             <option value="New+Cycle" >New Cycle</option>
                                 <option value="Rosario" >Rosario</option>
                                     <option value="Marvel" >Marvel</option>
                                         <option value="Questrial" >Questrial</option>
                                         <option value="Ubuntu" >Ubuntu</option>
                                          <option value="Andika" >Andika</option>
                                           <option value="Abel" >Abel</option>
                                            <option value="Shanti" >Shanti</option>
                                             <option value="Istok+Web" >Istok Web</option>
                                                   <option value="Varela+Round" >Varela Round</option>
                           <option value="Actor" >Actor</option>
             </select>
          </td>       

        </tr>  
                  <tr>
          <td>Heading font
                <p>Current font: <?php if (isset($shopcart_font)) {
                	echo '<b>';
            	echo $shopcart_font;
            }
            else {
            	
            	echo 'Arial';
            }
            echo '</b>';
            ?>
          </p>
          
          </td>
          <td>
          <select name="shopcart_font">
		  <option value="Arial">Arial</option>
		        <option value="Trebuchet MS">Trebuchet MS</option>
<option value="Aclonica">Aclonica</option>
<option value="Allan">Allan</option>
<option value="Annie+Use+Your+Telescope">Annie Use Your Telescope</option>
<option value="Anonymous+Pro">Anonymous Pro</option>
<option value="Allerta+Stencil">Allerta Stencil</option>
<option value="Allerta">Allerta</option>
<option value="Amaranth">Amaranth</option>
<option value="Anton">Anton</option>
<option value="Architects+Daughter">Architects Daughter</option>
<option value="Arimo">Arimo</option>
<option value="Artifika">Artifika</option>
<option value="Arvo">Arvo</option>
<option value="Asset">Asset</option>
<option value="Astloch">Astloch</option>
<option value="Bangers">Bangers</option>
<option value="Bentham">Bentham</option>
<option value="Bevan">Bevan</option>
<option value="Bigshot+One">Bigshot One</option>
<option value="Bowlby+One">Bowlby One</option>
<option value="Bowlby+One+SC">Bowlby One SC</option>
<option value="Brawler">Brawler </option>
<option value="Buda">Buda</option>
<option value="Cabin">Cabin</option>
<option value="Calligraffitti">Calligraffitti</option>
<option value="Candal">Candal</option>
<option value="Cantarell">Cantarell</option>
<option value="Cardo">Cardo</option>
<option value="Carter One">Carter One</option>
<option value="Caudex">Caudex</option>
<option value="Cedarville+Cursive">Cedarville Cursive</option>
<option value="Cherry+Cream+Soda">Cherry Cream Soda</option>
<option value="Chewy">Chewy</option>
<option value="Coda">Coda</option>
<option value="Coming+Soon">Coming Soon</option>
<option value="Copse">Copse</option>
<option value="Corben">Corben</option>
<option value="Cousine">Cousine</option>
<option value="Covered+By+Your+Grace">Covered By Your Grace</option>
<option value="Crafty+Girls">Crafty Girls</option>
<option value="Crimson+Text">Crimson Text</option>
<option value="Crushed">Crushed</option>
<option value="Cuprum">Cuprum</option>
<option value="Damion">Damion</option>
<option value="Dancing+Script">Dancing Script</option>
<option value="Dawning+of+a+New+Day">Dawning of a New Day</option>
<option value="Didact+Gothic">Didact Gothic</option>
<option value="Droid+Sans">Droid Sans</option>
<option value="Droid+Sans+Mono">Droid Sans Mono</option>
<option value="Droid+Serif">Droid Serif</option>
<option value="EB+Garamond">EB Garamond</option>
<option value="Expletus+Sans">Expletus Sans</option>
<option value="Fontdiner+Swanky">Fontdiner Swanky</option>
<option value="Forum">Forum</option>
<option value="Francois+One">Francois One</option>
<option value="Geo">Geo</option>
<option value="Give+You+Glory">Give You Glory</option>
<option value="Goblin+One">Goblin One</option>
<option value="Goudy+Bookletter+1911">Goudy Bookletter 1911</option>
<option value="Gravitas+One">Gravitas One</option>
<option value="Gruppo">Gruppo</option>
<option value="Hammersmith+One">Hammersmith One</option>
<option value="Holtwood+One+SC">Holtwood One SC</option>
<option value="Homemade+Apple">Homemade Apple</option>
<option value="Inconsolata">Inconsolata</option>
<option value="Indie+Flower">Indie Flower</option>
<option value="IM+Fell+DW+Pica">IM Fell DW Pica</option>
<option value="IM+Fell+DW+Pica+SC">IM Fell DW Pica SC</option>
<option value="IM+Fell+Double+Pica">IM Fell Double Pica</option>
<option value="IM+Fell+Double+Pica+SC">IM Fell Double Pica SC</option>
<option value="IM+Fell+English">IM Fell English</option>
<option value="IM+Fell+English+SC">IM Fell English SC</option>
<option value="IM+Fell+French+Canon">IM Fell French Canon</option>
<option value="IM+Fell+French+Canon+SC">IM Fell French Canon SC</option>
<option value="IM+Fell+Great+Primer">IM Fell Great Primer</option>
<option value="IM+Fell+Great+Primer+SC">IM Fell Great Primer SC</option>
<option value="Irish+Grover">Irish Grover</option>
<option value="Irish+Growler">Irish Growler</option>
<option value="Istok+Web">Istok Web</option>
<option value="Josefin+Sans">Josefin Sans Regular 400</option>
<option value="Josefin+Slab">Josefin Slab Regular 400</option>
<option value="Judson">Judson</option>
<option value="Jura"> Jura Regular</option>
<option value="Just+Another+Hand">Just Another Hand</option>
<option value="Just+Me+Again+Down+Here">Just Me Again Down Here</option>
<option value="Kameron">Kameron</option>
<option value="Kenia">Kenia</option>
<option value="Kranky">Kranky</option>
<option value="Kreon">Kreon</option>
<option value="Kristi">Kristi</option>
<option value="La+Belle+Aurore">La Belle Aurore</option>
<option value="Lato">Lato</option>
<option value="League+Script">League Script</option>
<option value="Lekton"> Lekton </option>
<option value="Limelight"> Limelight </option>
<option value="Lobster">Lobster</option>
<option value="Lobster Two">Lobster Two</option>
<option value="Lora">Lora</option>
<option value="Love+Ya+Like+A+Sister">Love Ya Like A Sister</option>
<option value="Loved+by+the+King">Loved by the King</option>
<option value="Luckiest+Guy">Luckiest Guy</option>
<option value="Maiden+Orange">Maiden Orange</option>
<option value="Mako">Mako</option>
<option value="Maven+Pro"> Maven Pro</option>
<option value="Meddon">Meddon</option>
<option value="MedievalSharp">MedievalSharp</option>
<option value="Megrim">Megrim</option>
<option value="Merriweather">Merriweather</option>
<option value="Metrophobic">Metrophobic</option>
<option value="Michroma">Michroma</option>
<option value="Miltonian Tattoo">Miltonian Tattoo</option>
<option value="Miltonian">Miltonian</option>
<option value="Modern Antiqua">Modern Antiqua</option>
<option value="Monofett">Monofett</option>
<option value="Molengo">Molengo</option>
<option value="Mountains of Christmas">Mountains of Christmas</option>
<option value="Muli">Muli Regular</option>
<option value="Neucha">Neucha</option>
<option value="Neuton">Neuton</option>
<option value="News+Cycle">News Cycle</option>
<option value="Nixie+One">Nixie One</option>
<option value="Nobile">Nobile</option>
<option value="Nova+Cut">Nova Cut</option>
<option value="Nova+Flat">Nova Flat</option>
<option value="Nova+Mono">Nova Mono</option>
<option value="Nova+Oval">Nova Oval</option>
<option value="Nova+Round">Nova Round</option>
<option value="Nova+Script">Nova Script</option>
<option value="Nova+Slim">Nova Slim</option>
<option value="Nova+Square">Nova Square</option>
<option value="Nunito:light"> Nunito Light</option>
<option value="Nunito"> Nunito Regular</option>
<option value="OFL+Sorts+Mill+Goudy+TT">OFL Sorts Mill Goudy TT</option>
<option value="Old+Standard+TT">Old Standard TT</option>
<option value="Open+Sans">Open Sans regular</option>
<option value="Open+Sans+Condensed">Open Sans Condensed</option>
<option value="Orbitron">Orbitron Regular (400)</option>
<option value="Oswald">Oswald</option>
<option value="Over+the+Rainbow">Over the Rainbow</option>
<option value="Reenie+Beanie">Reenie Beanie</option>
<option value="Pacifico">Pacifico</option>
<option value="Patrick+Hand">Patrick Hand</option>
<option value="Paytone+One">Paytone One</option>
<option value="Permanent+Marker">Permanent Marker</option>
<option value="Philosopher">Philosopher</option>
<option value="Play">Play</option>
<option value="Playfair+Display"> Playfair Display </option>
<option value="Podkova"> Podkova </option>
<option value="PT+Sans">PT Sans</option>
<option value="PT+Sans+Narrow">PT Sans Narrow</option>
<option value="PT+Sans+Narrow:regular,bold">PT Sans Narrow (plus bold)</option>
<option value="PT+Serif">PT Serif</option>
<option value="PT+Serif Caption">PT Serif Caption</option>
<option value="Puritan">Puritan</option>
<option value="Quattrocento">Quattrocento</option>
<option value="Quattrocento+Sans">Quattrocento Sans</option>
<option value="Radley">Radley</option>
<option value="Raleway">Raleway</option>
<option value="Redressed">Redressed</option>
<option value="Rock+Salt">Rock Salt</option>
<option value="Rokkitt">Rokkitt</option>
<option value="Ruslan+Display">Ruslan Display</option>
<option value="Schoolbell">Schoolbell</option>
<option value="Shadows+Into+Light">Shadows Into Light</option>
<option value="Shanti">Shanti</option>
<option value="Sigmar+One">Sigmar One</option>
<option value="Six+Caps">Six Caps</option>
<option value="Slackey">Slackey</option>
<option value="Smythe">Smythe</option>
<option value="Sniglet">Sniglet</option>
<option value="Special+Elite">Special Elite</option>
<option value="Stardos+Stencil">Stardos Stencil</option>
<option value="Sue+Ellen+Francisco">Sue Ellen Francisco</option>
<option value="Sunshiney">Sunshiney</option>
<option value="Swanky+and+Moo+Moo">Swanky and Moo Moo</option>
<option value="Syncopate">Syncopate</option>
<option value="Tangerine">Tangerine</option>
<option value="Tenor+Sans"> Tenor Sans </option>
<option value="Terminal+Dosis+Light">Terminal Dosis Light</option>
<option value="The+Girl+Next+Door">The Girl Next Door</option>
<option value="Tinos">Tinos</option>
<option value="Ubuntu">Ubuntu</option>
<option value="Ultra">Ultra</option>
<option value="Unkempt">Unkempt</option>
<option value="UnifrakturCook:bold">UnifrakturCook</option>
<option value="UnifrakturMaguntia">UnifrakturMaguntia</option>
<option value="Varela">Varela</option>
<option value="Varela Round">Varela Round</option>
<option value="Vibur">Vibur</option>
<option value="Vollkorn">Vollkorn</option>
<option value="VT323">VT323</option>
<option value="Waiting+for+the+Sunrise">Waiting for the Sunrise</option>
<option value="Wallpoet">Wallpoet</option>
<option value="Walter+Turncoat">Walter Turncoat</option>
<option value="Wire+One">Wire One</option>
<option value="Yanone+Kaffeesatz">Yanone Kaffeesatz</option>
<option value="Yeseva+One">Yeseva One</option>
<option value="Zeyada">Zeyada</option>  
            </select> 
          </td>
        </tr>       
      </table>        <!--  <input type="hidden" name="my_module_module" value="<?php //echo $my_module_module; ?>" /> -->
    </form>
    <p> Developed by <a href="http://goInventive.co.uk/">goInventive.co.uk</a></p>
  </div>
</div>

<script type="text/javascript">

$(document).ready(function() {

	$('	#shopcart_color_a,	#shopcart_color_b,	#shopcart_color_c,	#shopcart_links_a_color, #shopcart_links_b_color,	#shopcart_links_hover_color,	#shopcart_menu_links_color,	#shopcart_menu_bg_color,	#shopcart_top_bg_color,	#shopcart_top_menu_bg,	#shopcart_breadcrumbs_bg_color,	#shopcart_footer_bg_color,	#shopcart_button_normal_a,	#shopcart_button_normal_b,	#shopcart_button_hover_a,#shopcart_button_hover_b,#shopcart_promo_price,	#shopcart_normal_price,	#shopcart_old_price').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$(el).val(hex);
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
		}
	})
	.bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});
	 });
</script>

<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 

<script type="text/javascript"><!--
$('#form').bind('submit', function() {
	var module = new Array(); 

	$('#module tbody').each(function(index, element) {
		module[index] = $(element).attr('id').substr(10);
	});
	
	$('input[name=\'my_module_module\']').attr('value', module.join(','));
});
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
