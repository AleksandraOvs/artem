<?php

use Carbon_Fields\Container;
use Carbon_Fields\Field;

Container::make('theme_options', 'Мои настройки')
        ->set_icon ('dashicons-editor-quote')
        // ->add_tab(__('Способы связи в шапке'), array(
        //             Field::make('text', 'contact_link', 'Ссылка на способ связи')
        //                 ->set_width(50),
        //             Field::make('image', 'contact_image', 'Изображение способа связи')
        //                 ->set_width(50),
        // ));
        // ->add_tab(__('Способы связи в шапке (complex)'), array(
        //     //->add_fields( array(
        //         // Field::make('complex', 'contacts_complex', 'Способы связи (complex)')
        //         //     ->add_fields(array (
        //     Field::make('text', 'contact_link', 'Ссылка на способ связи')
        //         ->set_width(50),
        //     Field::make('image', 'contact_image', 'Изображение способа связи')
        //         ->set_width(50),
        // //));
        //         //));
        //));

        ->add_tab(__('Способы связи'), array(
            Field::make('complex', 'contacts', 'Ссылки')
                ->add_fields( array(
                    Field::make('text', 'contact_link', 'Ссылка на способ связи')
                        ->set_width(50),
                    Field::make('image', 'contact_image', 'Изображение способа связи')
                        ->set_width(50),
                )),
        ))

        ->add_tab(__('Главный слайдер'), array(
            Field::make('complex', 'slider', 'Добавить слайды')
            ->add_fields( array(
                Field::make('image', 'hero_slide', 'Слайд')
                    ->set_width(33),
                Field::make('text', 'hero_heading', 'Основной заголовок hero-секции')
                    ->set_width(33),
                Field::make('text', 'hero_paragraph', 'Текст под заголовком')
                    ->help_text('картинка для экранов шириной менее 578px')
                    ->set_width(33),
                Field::make('image', 'resp_hero_slide', 'Слайд для маленьких экранов')
                    ->set_width(33),
                Field::make('text', 'hero_button_text', 'Текст кнопки')
                    ->set_width(50),
                Field::make('text', 'hero_button_link', 'Ссылка кнопки')
                    ->set_width(50),
            )),
        ))

        ->add_tab(__('Слайдер с продукцией'), array(
            Field::make('complex', 'slider-products', 'Добавить слайды с продукцией')
            ->add_fields( array(
                Field::make('image', 'product_slide', 'Слайд')
                    ->set_width(33),
                Field::make('text', 'product_heading', 'Название продукта')
                    ->set_width(33),
                Field::make('text', 'product_paragraph', 'Краткая характеристика продукта')
                    ->set_width(33),
            )),
        ))

        ->add_tab(__('Контакты в футере'), array(
            Field::make('text', 'footer_contacts_address', 'Адрес'),
            Field::make('complex', 'footer_contacts', 'Контакты')
                ->add_fields( array(
                    Field::make('text', 'footer_contacts_name', 'Название')
                        ->set_width(20),
                    Field::make('text', 'footer_contacts_text', 'Текст ссылки')
                        ->set_width(40),
                    Field::make('text', 'footer_contacts_link', 'Ссылка на способ связи')
                        ->set_width(40), 
                )),
        ));