<?php

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */

use yii\helpers\Html;

$this->title = 'Web Service Client';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-consumo">

    <p align="center"><a  class="btn btn-md btn-success" href="http://localhost/rest-client/consumo.php">Todos los consumos</a></p>
    <p align="center" ><a  class="btn btn-lg btn-success" href="http://localhost/rest-client/saldo.php">Total consumo por (id)</a></p>

</div>