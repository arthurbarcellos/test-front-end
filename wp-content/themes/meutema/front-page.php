<?php 
/*
Template Name: Home
*/
?>

<?php get_header();?>
    <div class="wrapper">
        <!-- Banner -->
        <div class="banner">
            <img src="<?php the_field('imagem_de_fundo')?>" alt="banner">
            <div class="wrapper-content banner-texto">
                <p class="titulo-banner"><?php the_field('lema')?></p>
                <a class="produtos-link" href="<?php the_field('botao_link')?>">
                    <span class="badge badge-pill badge-dark py-2 our-products"><?php the_field('botao')?></span> 
                </a> 
            </div>
        </div>

        <!-- Historia -->
        <div class="wrapper-content historia">
            <div class="row"> 
                <div class="col">
                    <div class="foto">
                        <img src="<?php the_field('imagem')?>" alt="historia">
                    </div>
                </div>
                <div class="col">
                    <div class="texto">
                        <p class="titulo">
                            <?php the_field('titulo')?>
                        </p>
                        <div class="linha"></div>
                        <p class="descricao">
                        <?php the_field('descricao')?>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!--Produtos-->
        <div class="produtos wrapper-content" id="nossosprodutos">
            <span class="texto">
                <p class="titulo">
                    <?php the_field('titulo_produtos')?>
                </p>
                <div class="linha"></div>
            </span>

            <div class="container-fluid m-0 p-0">
                <div class="row">
                    <?php  
                        $args = array(
                            'post_type'      => 'product',
                            'posts_per_page' => 6,
                        );

                        $loop = new WP_Query( $args );

                        while ( $loop->have_posts() ) : $loop->the_post();
                            global $product;

                            $attachment_ids = $product->get_gallery_attachment_ids();
                            $img_link_1 = wp_get_attachment_url($attachment_ids[0]);
                            $img_link_2 = wp_get_attachment_url($attachment_ids[1]);
                            ?>

                            <!-- Cards -->
                            <div class="col-sm-4">
                                <div class="card" type="button" data-toggle="modal" data-target="#modal" data-title="<?php the_title()?>" data-price="<?php echo $product->get_price()?>" data-description="<?php echo get_the_content()?>" data-img1="<?php echo get_the_post_thumbnail_url();?>" data-img2="<?php echo $img_link_1;?>" data-img3="<?php echo $img_link_2?>">
                                    <img class="card-img-top" src="<?php echo get_the_post_thumbnail_url(); ?>" alt="image">
                                    <div class="card-body">
                                        <h5 class="card-title"><?php the_title()?></h5>
                                        <p class="card-text">R$<?php echo $product->get_price() ?></p>
                                    </div>
                                </div>
                            </div>
                                
                        <?php endwhile;
                        wp_reset_query();
                    ?>
                </div>
            </div>

            <div class="more">
                <button class="btn" id="loadMore">Ver mais</button>
            </div>
            
           <!--Modal-->            
            <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content rounded-0">
                        <div class="modal-body m-0 p-0">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <img src="<?php echo home_url($path = '/wp-content/themes/meutema/img/Grupo 400.png') ?>" alt="close">
                            </button>
                            <div class="row">
                                <!-- Galeria -->
                                <div class="col gallery">
                                    <div class="container">
                                        <img id="expandedImg" class="img-1">
                                        <div class="row">
                                            <img class="img-1" onclick="myFunction(this);">
                                            <img class="img-2" onclick="myFunction(this);">          
                                            <img class="img-3" onclick="myFunction(this);">
                                        </div>
                                    </div>

                                </div>
                                <!-- Conteúdo e Ações -->
                                <div class="col">
                                    <p class="modal-title"></p>
                                    <p class="modal-price"></p>
                                    <p class="modal-description"></p>
                                    <div class="counter">
                                        <button id="menos" onclick="menos();">&#8722;</button>
                                        <input type="text" id="count" value="1" style="width: 35px; border: 1px solid #CBCBCB; text-align: center; font-size: 16px">
                                        <button id="mais" onclick="mais();">&#43;</button>
                                    </div>
                                    <div class="add-car">
                                        <button class="btn" id="add-car-btn">adicionar ao carrinho</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Contato -->
        <div class="contato wrapper-content" id="contato">
            <div class="row">
                <div class="col">
                    <div class="texto">
                        <p><?php the_field('mensagem_contato')?></p>
                    </div>
                    <form>
                        <div class="form-group row">
                            <label for="exampleInputName" class="col-sm-2 col-form-label"><?php the_field('label_1')?></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="exampleInputName" placeholder="<?php the_field('placeholder_1')?>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="exampleInputTel" class="col-sm-2 col-form-label"><?php the_field('label_2')?></label>
                            <div class="col-sm-10">
                                <input type="tel" class="form-control" id="exampleInputTel" placeholder="<?php the_field('placeholder_2')?>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="exampleInputEmail" class="col-sm-2 col-form-label"><?php the_field('label_3')?></label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="exampleInputEmail" placeholder="<?php the_field('placeholder_3')?>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="exampleInputMsg" class="col-sm-2 col-form-label"><?php the_field('label_4')?></label>
                            <div class="col-sm-10">
                                <textarea class="form-control" id="exampleInputMsg" rows="3" placeholder="<?php the_field('placeholder_4')?>"></textarea>
                                <button class="btn" type="submit" id="enviar">enviar</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col">
                    <div class="local">
                        <div class="texto">
                            <p><?php the_field('mensagem_local')?></p>
                        </div>
                        <div class="imagem">
                            <img src="<?php the_field('imagem_local')?>" alt="local">
                        </div>
                        <div class="endereco">
                            <img src="<?php echo home_url($path = '/wp-content/themes/meutema/img/pin.png') ?>" alt="pin">
                            <div><?php the_field('endereco')?></div>
                        </div>
                        <button class="btn" id="rota">traçar rota</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php get_footer();?>
