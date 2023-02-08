<?php
    $product_slide_image_id = carbon_get_theme_option('product_slide');
    $product_slide_image_url = carbon_get_theme_option($product_slide_image_id, 'full');
    //$product_slide_heading = carbon_get_theme_option('product_heading');
    $product_slide_paragraph = carbon_get_theme_option('product_paragraph');
?>

<section class="product-slider">
    <div class="content-wrapper">
        <div class="product-slider__heading">
            <h3 class="h3-heading">Наша продукция</h3>
        <ul class="product-slider__slide__nav">
                <li class="product-slider__slide__nav__button-prev"></li>
                <li class="product-slider__slide__nav__button-next"></li>
        </ul>
        </div>
        
        <div class="swiper-container product-slider__container">
            <div class="swiper-wrapper product-slider__wrapper">
                <?php 

                if($product_slides = carbon_get_theme_option('slider-products')){
                    foreach ($product_slides as $product_slide){
                        ?>

                        <div class="swiper-slide product-slider__slide">
                            <?php $product_slide_item = wp_get_attachment_image_url($product_slide['product_slide'], 'full')?>
                            <img src="<?php echo $product_slide_item;?>" alt="">
                            <div class="product-slider__slide__content__sign">
                                <p><?php echo  $product_slide['product_heading']; ?></p>
                            </div>
                        </div>
                <?php
                    }
                }
                ?>
            </div>
            
            
        </div>
    </div>
</section>