<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="content"><p id="author"><?php echo $review['author']; ?> <img src="catalog/view/theme/shopcart/image/stars-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['reviews']; ?>" /></p>
 <p id="date_added"> <?php echo $review['date_added']; ?></p>
  <?php echo $review['text']; ?></div>
<?php } ?>
<div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?>
<div class="content"><?php echo $text_no_reviews; ?></div>
<?php } ?>
