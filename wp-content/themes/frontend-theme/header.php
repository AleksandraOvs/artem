<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
  <?php wp_head() ?>
</head>



<body class="body">
    <header class="header">
      <div class="content-wrapper">
    <a href="/" class="header-logo">
  <?php
  $header_logo = get_theme_mod('header_logo');
  $img = wp_get_attachment_image_src($header_logo, 'full');
  if ($img) :
    ?>
    <img src="<?php echo $img[0]; ?>" alt="">
  <?php endif; ?>
</a>
    



  <?php 
if( has_nav_menu( 'head_menu' )) {
wp_nav_menu( array(
  'theme_location' => 'head_menu',
  'container' => false,
  'menu_class' => 'nav navbar-nav',
  'items_wrap' => '<ul class="%2$s">%3$s</ul>',
  'depth' => 2,
  'walker' => new Main_walker_menu()
));
}
?>
   
     
<div class="header__contacts">
<?php 
$thumbnail_link = carbon_get_theme_option('contact_link');
$thumbnail_id = carbon_get_theme_option('contact_image');
$thumbnail_url = wp_get_attachment_image_url( $thumbnail_id, 'full' );

if( $contacts = carbon_get_theme_option('contacts' ) ) {
	foreach( $contacts as $contact ) {
    ?>
    <a href="<?php echo $contact[ 'contact_link']; ?>" class="header__contacts__item">
  <?php
    $thumb_contact = wp_get_attachment_image_url( $contact['contact_image'], 'full' );
?>
    <img class="header__contacts__item__img" src="<?php echo $thumb_contact; ?>" alt="">
  </a>
<?php
	}
}
?>
</div>

  <button id="burger" class="burger"></button>

      

  
</div><!-- end of content-wrapper -->

  </header>
