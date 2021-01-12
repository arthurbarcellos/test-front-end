<?php

function load_css(){
    wp_register_style('bootstrap', get_template_directory_uri() . '/css/bootstrap.css', array(), false, 'all');
    wp_enqueue_style('bootstrap');

    wp_register_style('index', get_template_directory_uri() . '/css/index.css', array(), false, 'all');
    wp_enqueue_style('index');
}
add_action('wp_enqueue_scripts', 'load_css');

function load_js(){
    wp_register_script('jquery-archive', get_template_directory_uri() . '/js/jquery.min.js', 'jquery', false, true);
    wp_enqueue_script('jquery-archive');

    wp_register_script('bootstrap-js', get_template_directory_uri() . '/js/bootstrap.min.js', 'jquery', false, true);
    wp_enqueue_script('bootstrap-js');

    wp_register_script('index-js', get_template_directory_uri() . '/js/index.js', 'jquery', false, true);
    wp_enqueue_script('index-js');
}
add_action('wp_enqueue_scripts', 'load_js');



