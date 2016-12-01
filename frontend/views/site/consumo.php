<?php

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */

use yii\helpers\Html;

$this->title = 'Consumo de usuario';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-consumo">

    <strong><h1>CONSUMO TOTAL </h1></strong>
    <table class="table">
        <thead>
            <tr>
                <th>Producto</th>
                <th>Precio</th>
            </tr>
        </thead>
    <?php foreach ($productos as $key => $value): ?>

        <tbody>     
            <tr class="active">
                <td><?=$value->nombre?></td> <!-- Nombre es la columna en la tabla Producto-->
                <td><?=$value->precio?></td>
            </tr>           
        </tbody>

    <?php endforeach; ?>
    </table>    
    <div class="row text-center"><?php echo yii\widgets\LinkPager::widget(['pagination'=>$pagination]); ?></div>
    
    <?= '<strong>'.'Total consumo: $'. round($total, 2).'</strong>'   ?>

</div>