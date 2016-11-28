<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'Web Service';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>
<div align="center">

     <!--<a name="punto"></a>-->
     <p><a class="btn btn-md btn-success" href="../../../../rest-client">Obtener todos los paises</a></p>
     <p><a class="btn btn-md btn-success" href="../../../../rest-client/paisId.php">Obtener pais con ID: AU</a></p>
     
</div>
    
    
    
</div>
