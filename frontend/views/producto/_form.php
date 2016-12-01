<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Producto */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="producto-form">

    <?php $form = ActiveForm::begin(); ?>

   
     <?='' //$form->field($model, 'nombre')->dropDownList([ 'cafe' => 'Cafe', 'te' => 'Te', 'agua' => 'Agua', ], ['prompt' => '']) ?>
    
    <?= $form->field($model, 'nombre')->radioList(['cafe' => 'Cafe', 'te' => 'Te', 'agua' => 'Agua', ]) ?>

  

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
