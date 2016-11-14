<?php

/* @var $this yii\web\View */

$this->title = 'Anthony-CMS';
?>


<div class="site-index">

    <div class="jumbotron">
        <h1>Bienvenido a!</h1>

        <p class="lead">Anthony - CMS.</p>
    </div>

    <div class="body-content">

        <div class="row">
            <?php
            $noticia = common\models\Noticia::find()->all();
            foreach ($noticia as $key => $valueNoticia):
            ?>
            
            
            <h4 >
                <a href="<?= \yii\helpers\Url::to(['noticia/'. $valueNoticia->seo_slug]) ?>">
                <?= $valueNoticia->titulo?>
                </a>
            </h4>
            
            <?php endforeach; ?>
            
            
       </div>   
    </div>
</div>
