<?php 
  $slide_image_id = carbon_get_theme_option('hero_slide');
  $slide_image_url = carbon_get_theme_option($slide_image_id, 'full');

  $resp_slide_image_id = carbon_get_theme_option('resp_hero_slide');
  $resp_slide_image_url = carbon_get_theme_option($resp_slide_image_id, 'full');
?>


<section class="content-wrapper-slider">
  <div class="swiper-container hero-slider__container">
    <div class="content-wrapper">
      
    </div>

    
    
    <div class="swiper-wrapper hero-slider__wrapper">
      <?php
        if($slides = carbon_get_theme_option('slider')){
          foreach ($slides as $slide){
            ?>
          
            <div class="swiper-slide hero-slider__slide">
              
            <div class="hero-slider__content">
              <div class="content-wrapper">
        <h2 class="hero-slider__content__heading h2-heading"><?php echo $slide['hero_heading'];?></h2>
        <div class="hero-slider__content__paragraph"><?php echo $slide['hero_paragraph'];?></div>
        <a href="<?php echo  $slide['hero_button_link'];?>" class="fill-button-link"><?php echo  $slide['hero_button_text'];?></a>
      </div>

            <div class="hero-slider__overlay"></div>
            <?php $slide_item = wp_get_attachment_image_url($slide['hero_slide'], 'full')?>
            <?php $resp_slide_item = wp_get_attachment_image_url($slide['resp_hero_slide'], 'full')?>
              <picture>
                <source media="(max-width: 578px)" type="image/jpg" srcset="<?php echo $resp_slide_item;?>">
                <img src="<?php echo $slide_item;?>" alt="">
              </picture>
            
            
     
            </div>
          </div>
<?php
          }
        }
      ?>
    </div>

    <div class="swiper-pagination hero-slider__pagination"></div>
   
  </div> 
</section>
