<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\User;
use app\models\Departamento;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model common\models\Personas */
/* @var $prueba common\models\User */   //implementado
/* @var $form yii\widgets\ActiveForm */
?>

<div class="personas-form">

    <?php $form = ActiveForm::begin(); ?>
    <!-- Codigo implementado -->
    <?= $form->field($model, 'nombre')->textInput() ?>
    
    <?php
    $prueba1 = common\models\Departamento::find()->all();
    $listData1 = ArrayHelper::map($prueba1, 'id', 'nombre');
    echo $form->field($model, 'id_departamento')->dropDownList($listData1, ['prompt' => 'Select...']);
    ?>

    <?php
    $prueba2 = dektrium\user\models\User::find()->all();
    $listData2 = ArrayHelper::map($prueba2, 'id', 'username');
    echo $form->field($model, 'id_user')->dropDownList($listData2, ['prompt' => 'Select...']);
    ?>
    
    <?= $form->field($model, 'saldo')->textInput() ?>
    <!--<? = $form->field($model, 'id_departamento')->textInput() ?>-->
    <!--<? = $form->field($model, 'id_user')->textInput() ?>-->

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
