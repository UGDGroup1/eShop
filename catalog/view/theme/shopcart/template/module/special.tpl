<div class="box">
  <div class="box-heading"><h2><?php echo $heading_title; ?></h2></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
         <div class="product_outside_border">
       <div class="product_outside">
          <div class="product_inside">
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
                <div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><span><?php echo $button_cart; ?></span></a></div>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <div class="product_sale">       
             <div class="sale-middle">
 			    <?php 
             	$this->language->load('module/shopcart');      	
             	$sale = $this->language->get('sale_text');     	
             	echo $sale;       
             ?>
          </div> 
          </div>
          <?php } ?>
        </div>
        <?php } ?>
 		 </div>
      </div>
      </div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
