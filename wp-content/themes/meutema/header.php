<!DOCTYPE html>
<html lang="pt-br">
<head>

    <?php wp_head();?>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">

    <title>Test Front-End</title>
    
</head>

<body <?php body_class();?>>
    <!-- NavBar -->
    <div class="retangulo fixed-top wrapper" id="ret"></div>
    <div class="wrapper background-nav fixed-top">
        <nav class="navbar fixed-top navbar-expand-sm navbar-light wrapper wrapper-content">
            <ul class="navbar-nav menu">
                <li class="nav-item">
                    <a class="nav-link px-0" href="<?php the_field('menu_link_1')?>"><?php the_field('menu_item_1')?></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-0" href="<?php the_field('menu_link_2')?>"><?php the_field('menu_item_2')?></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-0" href="<?php the_field('menu_link_3')?>"><?php the_field('menu_item_3')?></a>
                </li>
            </ul>
            <ul class="nav justify-content-center logo">
                <img class="grupo" src="<?php the_field('logo')?>" alt="logo">
            </ul>
            <ul class="navbar-nav left justify-content-end wrapper-content">
                <li class="nav-item socials">
                    <a class="facebook-link" href="<?php the_field('social_link_1')?>">
                        <img src="<?php the_field('social_icone_1')?>" alt="facebook">
                    </a>
                    <a class="instagram-link" href="<?php the_field('social_link_2')?>">
                        <img src="<?php the_field('social_icone_2')?>" alt="instagram">
                    </a>
                    <a class="twitter-link" href="<?php the_field('social_link_3')?>">
                        <img src="<?php the_field('social_icone_3')?>" alt="twitter">
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link carrinho-link px-0" href="#carrinho">
                        <img src="<?php echo home_url($path = '/wp-content/themes/meutema/img/Caminho 227.png') ?>" alt="carrinho">
                        <span class="badge badge-dark carrinho-itens">02</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>