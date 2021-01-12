<?php wp_footer();?>

    <div class="wrapper">
        <div class="footer wrapper-content">
            <div class="logo-info">
                <div class="logo-footer">
                    <img src="<?php the_field('logo')?>" alt="logo-footer">
                </div>
                <ul class="info">
                    <li class="telefone">
                        <img src="<?php echo home_url($path = '/wp-content/themes/meutema/img/Telefone - Filled 01.png') ?>" alt="telefone">
                        <span><?php the_field('telefone')?></span>
                    </li>
                    <li class="email">
                        <img src="<?php echo home_url($path = '/wp-content/themes/meutema/img/Email - Filled 01.png') ?>" alt="email">
                        <span><?php the_field('email')?></span>
                    </li>
                    <li class="linha"></li>
                    <li class="endereco">
                        <img src="<?php echo home_url($path = '/wp-content/themes/meutema/img/Location Pin - Filled 01.png') ?>" alt="pin-filled">
                        <span><?php the_field('endereco')?></span>
                    </li>
                </ul>
                <a type="button" class="up">
                    <img src="<?php echo home_url($path = '/wp-content/themes/meutema/img/Grupo 238.png') ?>" alt="up">
                </a>
            </div>
            <div class="copyright" onclick="test();">
                <p><?php the_field('copyright')?></p>
            </div>
        </div>
    </div>
        
           
</body>
</html>