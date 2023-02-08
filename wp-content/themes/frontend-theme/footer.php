<?php wp_footer()?>

<?php
$footer_address = carbon_get_theme_option('footer_contacts_address');

$footer_text = carbon_get_theme_option('footer_contacts_text');

$footer_link = carbon_get_theme_option('footer_contacts_link');
?>
<footer class="footer">

    <div class="content-wrapper">

        <div class="footer__site-info">
        <a href="/" class="footer__site-logo">
            <?php
                $footer_logo = get_theme_mod('footer_logo');
                $footer_img = wp_get_attachment_image_src($footer_logo, 'full');
                    if ($footer_img) :
            ?>
            <img src="<?php echo $footer_img[0]; ?>" alt="">
            <?php endif; ?>
        </a>
        <div class="footer__site-info__content">
            <p><?php bloginfo('name'); ?></p>
        <p>
            <?php //bloginfo('description'); ?>
            <?php echo $footer_address; ?>
    
        </p>
        </div>
        </div>

        <div class="footer__site-contacts">
        

        <?php 

if( $footer_contacts = carbon_get_theme_option('footer_contacts' ) ) {
	foreach( $footer_contacts as $footer_contact ) {
    ?>
    <p>
    <span><?php echo $footer_contact[ 'footer_contacts_name']; ?>&#42889;</span>
    <a href="<?php echo $footer_contact[ 'footer_contacts_link']; ?>" class="header__contacts__item">
    <?php echo $footer_contact[ 'footer_contacts_text']; ?></a>
    </p>
<?php
	}
}
?>







        </div>
    </div>
</footer>
<script src="https://api-maps.yandex.ru/2.1/?apikey=вашAPI-ключ&lang=ru_RU"></script>
  <script>
    // Функция ymaps.ready() будет вызвана, когда
    // загрузятся все компоненты API, а также когда будет готово DOM-дерево.
    ymaps.ready(init);
    function init() {
      // Создание карты.
      var myMap = new ymaps.Map("aksmap", {
        // Координаты центра карты.
        // Порядок по умолчанию: «широта, долгота».
        // Чтобы не определять координаты центра карты вручную,
        // воспользуйтесь инструментом Определение координат.
        center: [43.389509, 132.308465],
        // Уровень масштабирования. Допустимые значения:
        // от 0 (весь мир) до 19.
        zoom: 17
      });
      var myPlacemark = new ymaps.Placemark([43.389509, 132.308465], {}, {
        //iconLayout: 'default#image',
        iconImageHref: <?php get_stylesheet_directory_uri()?>'assets/images/svg/place.svg',
        // iconImageSize: [30, 42],
        // iconImageOffset: [-3, -42]
      });
      // Размещение геообъекта на карте.
      // myMap.geoObjects.add(myGeoObject);
      myMap.geoObjects.add(myPlacemark);
    }
  </script>