<?php

/* @var $this yii\web\View */

$this->title = 'Anthony-CMS';
?>

<div class="site-index">


    <div class="jumbotron">
        <h1>Bienvenido!</h1>
         <p> Leer Artículos </p>
        <ul>
           <h4><a href="articulos/Articulo HTML5.pdf">HTML5</a></h4>
           <h4><a href="articulos/Articulo Selenium.pdf">Selenium</a></h4>
           <h4><a href="articulos/Articulo testing.pdf">Testing</a></h4>
           <h4><a href="articulos/Articulo MVC.pdf">MVC</a></h4>
           <h4><a href="articulos/Articulo Software QA.pdf">Software QA</a></h4>
       </ul>

    </div>

    <div class="body-content">

       <div align="center">
        <h1>Post - Noticias!</h1>
       </div>
        <div class="row">
            <?php
            $noticia = common\models\Noticia::find()->all();
            foreach ($noticia as $key => $valueNoticia):
            ?>
 
            <h3>
                <a href="<?= \yii\helpers\Url::to(['noticia/'. $valueNoticia->seo_slug]) ?>">
                <?= $valueNoticia->titulo ?>
                </a>
            </h3>
            
            <?php endforeach; ?>

       </div>   
    </div>
</div>
